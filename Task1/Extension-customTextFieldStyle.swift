//
//  Extension-customTextFieldStyle.swift
//  Task1
//
//  Created by sako0602 on 2022/09/20.
//

import SwiftUI

extension TextField {
//  func textModifier() -> some Viewではわかりにくため変更。
    func customTextFieldStyle() -> some View {
        self
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .frame(width: 100, height: 35)
            .keyboardType(.numberPad)
    }

}
