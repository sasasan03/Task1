//
//  CalculationTest.swift
//  Task1
//
//  Created by sako0602 on 2022/09/17.
//

import SwiftUI


struct CalculationTest: View {
    @State var num1 = 0
    @State var num2 = 0
    @State var num3 = 0
    @State var num4 = 0
    @State var num5 = 0

    @State var total = 0

    var body: some View {
        
        HStack {
            VStack{
                TextField("hoge", value: $num1, formatter: NumberFormatter())
                    .textModifier()
                
                TextField("hoge", value: $num2, formatter: NumberFormatter())
                    .textModifier()
                
                TextField("hoge", value: $num3, formatter: NumberFormatter())
                    .textModifier()
                
                TextField("hoge", value: $num4, formatter: NumberFormatter())
                    .textModifier()
                
                TextField("hoge", value: $num5, formatter: NumberFormatter())
                    .textModifier()
                
                
                Button {
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
    
    func textModifier() -> some View {
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
