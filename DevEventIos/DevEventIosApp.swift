//
//  DevEventIosApp.swift
//  DevEventIos
//
//  Created by Ji Sungbin on 2021/11/30.
//

import SwiftUI

@main
struct DevEventIosApp: App {
    private var sharedViewModel = SharedViewModel()
    
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(sharedViewModel)
        }
    }
}
