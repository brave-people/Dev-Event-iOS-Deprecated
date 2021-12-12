//
//  ContentView.swift
//  DevEventIos
//
//  Created by Ji Sungbin on 2021/12/13.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject private var sharedVm: SharedViewModel
    
    var body: some View {
        switch sharedVm.screenType {
        case .splash: SplashScreen().transition(.opacity)
        case .main: MainScreen().transition(.opacity)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(SharedViewModel())
    }
}
