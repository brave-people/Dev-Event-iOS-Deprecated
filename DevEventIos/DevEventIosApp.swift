//
//  DevEventIosApp.swift
//  DevEventIos
//
//  Created by Ji Sungbin on 2021/11/30.
//

import SwiftUI

@main
struct DevEventIosApp: App {
    @StateObject var sharedViewModel = SharedViewModel()
    
    var body: some Scene {
        WindowGroup {
            switch sharedViewModel.screenType {
            case .splash: SplashScreen(sharedVm: sharedViewModel).transition(.opacity)
            case .main: MainScreen(sharedVm: sharedViewModel).transition(.opacity)
            }
        }
    }
}
