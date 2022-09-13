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
    
    init(value: Binding<Double> = .constant(0)) {
        _value = value
    }
    
    var body: some View {
            TextField("255", value: $value, formatter: NumberFormatter(), onCommit: checkColorValue)
                .textFieldStyle(.roundedBorder)
                .keyboardType(.decimalPad)
                .frame(width: 50)
                .alert("Wrong value!",
                       isPresented: $alertPresented,
                       actions: {},
                       message: {
                        Text("Enter correct value")
                })
        }
    
    private func checkColorValue() {
        if value > 255 || value < 0 {
            alertPresented.toggle()
            value = 0
        }
    }
}

struct ColorTextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        ColorTextFieldView()
    }
}
