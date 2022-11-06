//
//  MissCalculation.swift
//  Task1
//
//  Created by sako0602 on 2022/09/17.
//

import SwiftUI

//なぜTextfieldを５個並べるとエラーが発生する（長すぎる？と怒られます）
struct MissCalculation: View {
//下記の方法では０が出てしまう。
//    @State var num1 = 0
    @State var numText1 = ""
    @State var numText2 = ""
    @State var numText3 = ""
    @State var numText4 = ""
    @State var numText5 = ""
    
    @State var total = "Label"
    
    var body: some View {
        
        HStack {
            VStack {
                TextField("", value: $numText1, formatter: NumberFormatter())
                    .customTextFieldStyle()
                TextField("", value: $numText2, formatter: NumberFormatter())
                    .customTextFieldStyle()
                TextField("", value: $numText3, formatter: NumberFormatter())
                    .customTextFieldStyle()
                TextField("", value: $numText4, formatter: NumberFormatter())
                    .customTextFieldStyle()
                TextField("", value: $numText5, formatter: NumberFormatter())
                    .customTextFieldStyle()
//                TextField("", text: $numText5)
//                    .customTextFieldStyle()

                Button {
// Buttonの中でプロパティを使い小分けすることでエラー解消
                    let num1 = Int(numText1) ?? 0
                    let num2 = Int(numText2) ?? 0
                    let num3 = Int(numText3) ?? 0
                    let num4 = Int(numText4) ?? 0
                    let num5 = Int(numText5) ?? 0
// string型にint型を代入使用と認めエラー?（下記の方法で動かす方法はないのか？）
//                  total = num1 + num2 + num3 + num4 + num5
//エラーが発生。小分けしてとエラーが出る。（４つめまでは計算できるが５個目でクラッシュ）
                    

                    
                } label: {
                    Text("Button")
                }
//                Text(total)
                Text(total)

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
