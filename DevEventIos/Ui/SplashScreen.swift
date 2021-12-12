//
//  SplashView.swift
//  DevEventIos
//
//  Created by Ji Sungbin on 2021/11/30.
//

import SwiftUI

struct SplashScreen: View {
    @EnvironmentObject private var sharedVm: SharedViewModel
    
    var body: some View {
        VStack {
            Spacer()
            Text("Dev Event")
                .font(.largeTitle)
                .foregroundColor(Color.white)
            Spacer()
            Text("© 2021 지성빈 by 용감한 친구들. all rights reserved.")
                .font(.caption)
                .foregroundColor(Color.white)
                .padding(.bottom, 10)
        }
        .padding()
        .frame(
            maxWidth: .infinity,
            maxHeight: .infinity,
            alignment: .center
        )
        .ignoresSafeArea(.all)
        .background(Color(UIColor(named: "primary")!))
        .zIndex(1)
        .doDelayed(3) {
            withAnimation(.easeIn) {
                sharedVm.screenType = .main
            }
        }
    }
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen().environmentObject(SharedViewModel())
    }
}
