//
//  ColotTextFieldView.swift
//  ColorizedAppSwiftUI
//
//  Created by Клоун on 13.09.2022.
//

import SwiftUI

struct ColorTextFieldView: View {
    @State private var alertPresented = false
    
    @Binding var value: Double
    @Binding var text: String
    
    var body: some View {
        TextField("", text: $text) { _ in
            withAnimation {
                checkColorValue()
            }
        }
        .frame(width: 55)
        .textFieldStyle(.roundedBorder)
        .keyboardType(.decimalPad)
        .alert("Wrong Format", isPresented: $alertPresented, actions: {}) {
            Text("Please enter the correct value")
        }
    }
    
    private func checkColorValue() {
        if let value = Int(text), (0...255).contains(value) {
            self.value = Double(value)
            return
        }
        
        alertPresented.toggle()
        value = 0
        text = ""
    }
}

struct ColorTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        ColorTextFieldView(value: .constant(100), text: .constant("100"))
    }
}
