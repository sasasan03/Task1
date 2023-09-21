//
//  ContentView.swift
//  Task1
//
//  Created by sako0602 on 2022/09/17.
//




import SwiftUI

struct ContentView: View {
    @State var numText1 = ""
    @State var numText2 = ""
    @State var numText3 = ""
    @State var numText4 = ""
    @State var numText5 = ""
    
    @State var total = 0
    
    var body: some View {
        VStack{
            TextField("", text: $numText1)
                .textModifier()
            TextField("", text: $numText2)
                .textModifier()
            TextField("", text: $numText3)
                .textModifier()
            TextField("", text: $numText4)
                .textModifier()
            TextField("", text: $numText5)
                .textModifier()
            Button {
                let num1 = (Int(numText1)) ?? 0
                let num2 = (Int(numText2)) ?? 0
                let num3 = (Int(numText3)) ?? 0
                let num4 = (Int(numText4)) ?? 0
                let num5 = (Int(numText5)) ?? 0
                
                total = num1 + num2 + num3 + num4 + num5
                
            } label: {
                Text("Button")
            }
            
            Text("\(total)")

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
