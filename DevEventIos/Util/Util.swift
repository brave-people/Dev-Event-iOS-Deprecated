//
//  Util.swift
//  DevEventIos
//
//  Created by Ji Sungbin on 2021/12/13.
//

import Foundation
import SwiftUI

enum DispatchLevel {
    case main, userInteractive, userInitiated, utility, background
    var dispatchQueue: DispatchQueue {
        switch self {
        case .main:
            return DispatchQueue.main
            
        case .userInteractive:
            return DispatchQueue.global(qos: .userInteractive)
            
        case .userInitiated:
            return DispatchQueue.global(qos: .userInitiated)
            
        case .utility:
            return DispatchQueue.global(qos: .utility)
            
        case .background:
            return DispatchQueue.global(qos: .background)
        }
    }
}

extension View {
    func doDelayed(_ seconds: Double, dispatchLevel: DispatchLevel = .main, closure: @escaping () -> Void) -> some View {
        let dispatchTime = DispatchTime.now() + seconds
        dispatchLevel.dispatchQueue.asyncAfter(deadline: dispatchTime, execute: closure)
        return self
    }
}
