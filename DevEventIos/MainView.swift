//
//  MainView.swift
//  DevEventIos
//
//  Created by Sihyung You on 2021/12/13.
//

import SwiftUI

struct MainView: View {
    
    var body: some View {
        TabView {
            List {
                Text("메인화면")
                Text("테스트")
            }
            .tabItem {
                Image(systemName: "calendar")
            }
            
            List {
                Text("즐겨찾기화면")
                Text("테스트")
            }
            .tabItem {
                Image(systemName: "heart.fill")
            }
            
            Text("Info 화면")
                .tabItem {
                Image(systemName: "info.circle.fill")
            }
        }
    }
    
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
