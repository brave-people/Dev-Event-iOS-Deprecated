//
//  MainScreen.swift
//  DevEventIos
//
//  Created by Ji Sungbin on 2021/12/13.
//

import SwiftUI

struct MainScreen: View {
    @ObservedObject var sharedVm: SharedViewModel
    
    var body: some View {
        VStack {
            Text("TODO!")
        }
        .padding()
        .frame(
            maxWidth: .infinity,
            maxHeight: .infinity,
            alignment: .center
        )
        .zIndex(2)
    }
}

struct MainScreen_Previews: PreviewProvider {
    static var previews: some View {
        MainScreen(sharedVm: SharedViewModel())
    }
}
