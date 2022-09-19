//
//  CalculationTest.swift
//  Task1
//
//  Created by sako0602 on 2022/09/17.
//

import SwiftUI


struct CalculationTest: View {
    @State var numText1 = ""
    @State var numText2 = ""
    @State var numText3 = ""
    @State var numText4 = ""
    @State var numText5 = ""

    @State var total = 0

    var body: some View {
        
        HStack {
            VStack{
                TextField("", text: $numText1)
                    .customTextFieldStyle()
                
                TextField("", text: $numText2)
                    .customTextFieldStyle()
                
                TextField("", text: $numText3)
                    .customTextFieldStyle()
                
                TextField("", text: $numText4)
                    .customTextFieldStyle()
                
                TextField("", text: $numText5)
                    .customTextFieldStyle()
                
                
                Button {
                    let num1 = Int(numText1) ?? 0
                    let num2 = Int(numText2) ?? 0
                    let num3 = Int(numText3) ?? 0
                    let num4 = Int(numText4) ?? 0
                    let num5 = Int(numText5) ?? 0
                    total = num1 + num2 + num3 + num4 + num5
                } label: {
                    Text("Button")
                }
                .padding()
                
                Text(" \(total)")
                
                Spacer()
                
            }
            Spacer()
        }
        .padding()
    }
}

extension TextField {
    
    func customTextFieldStyle() -> some View {
        self
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .frame(width: 100, height: 35)
            .keyboardType(.numberPad)
    }
}

struct CalculationTest_Previews: PreviewProvider {
    static var previews: some View {
        CalculationTest()
    }
}
