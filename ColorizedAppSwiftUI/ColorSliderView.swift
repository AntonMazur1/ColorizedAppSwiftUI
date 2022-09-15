//
//  ColorSliderView.swift
//  ColorizedAppSwiftUI
//
//  Created by Клоун on 13.09.2022.
//

import SwiftUI

struct ColorSliderView: View {
    @Binding var sliderValue: Double
    @State private var text = ""
    let sliderColor: Color
    
    var body: some View {
        HStack {
            Text("\(lround(sliderValue))")
                .frame(width: 35)
            Slider(value: $sliderValue, in: 0...255, step: 1)
                .accentColor(sliderColor)
                .onChange(of: sliderValue) { newValue in
                    text = sliderValue.formatted()
                }
            ColorTextFieldView(value: $sliderValue, text: $text)
        }
        .onAppear {
            text = sliderValue.formatted()
        }
    }
}

struct ColorSliderView_Previews: PreviewProvider {
    static var previews: some View {
        ColorSliderView(sliderValue: .constant(100), sliderColor: .red)
    }
}
