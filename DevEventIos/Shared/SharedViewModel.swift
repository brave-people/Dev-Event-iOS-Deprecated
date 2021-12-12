//
//  ViewModel.swift
//  DevEventIos
//
//  Created by Ji Sungbin on 2021/12/13.
//

import Combine

class SharedViewModel: ObservableObject {
    @Published var screenType: ScreenType = .splash
}
