//
//  MissCalculation.swift
//  Task1
//
//  Created by sako0602 on 2022/09/17.
//

import SwiftUI

//なぜTextfieldを５個並べるとエラーが発生する（長すぎる？と怒られます）
struct MissCalculation: View {
    @State var num1 = ""
    @State var num2 = ""
    @State var num3 = ""
    @State var num4 = ""
    @State var num5 = ""
    
    @State var total = 0
    
    var body: some View {
        
        HStack {
            VStack {
                TextField("", text: $num1)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 100, height: 50, alignment: .leading)
                    .keyboardType(.numberPad)
                TextField("", text: $num2)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 100, height: 50, alignment: .leading)
                    .keyboardType(.numberPad)
                TextField("", text: $num3)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 100, height: 50, alignment: .leading)
                    .keyboardType(.numberPad)
                TextField("", text: $num4)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 100, height: 50, alignment: .leading)
                    .keyboardType(.numberPad)
                TextField("", text: $num5)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .frame(width: 100, height: 50, alignment: .leading)
                    .keyboardType(.numberPad)

                Button {
//                    self.total = (Int(num1) ?? 0) + (Int(num2) ?? 0) + (Int(num3) ?? 0) + (Int(num4) ?? 0) + (Int(num5) ?? 0)
                } label: {
                    Text("Button")
                }

                Text("計算結果")

                Spacer()
            }//HStackの終わり
                .padding()
            Spacer()
        }.background(Color.green) //VStackの終わり
    }
}

struct MissCalculation_Previews: PreviewProvider {
    static var previews: some View {
        MissCalculation()
    }
}
