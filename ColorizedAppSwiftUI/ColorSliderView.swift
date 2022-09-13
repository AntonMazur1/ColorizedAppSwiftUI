//
//  ColorSliderView.swift
//  ColorizedAppSwiftUI
//
//  Created by Клоун on 13.09.2022.
//

import SwiftUI

struct ColorSliderView: View {
    @Binding var sliderValue: Double
    let sliderColor: Color
    
    init(sliderValue: Binding<Double> = .constant(0), sliderColor: Color = .clear) {
        _sliderValue = sliderValue
        self.sliderColor = sliderColor
    }
    
    var body: some View {
        HStack {
            Text("\(lround(sliderValue))")
                .frame(width: 35)
            Slider(value: $sliderValue, in: 0...255, step: 1)
                .accentColor(sliderColor)
            ColorTextFieldView(value: $sliderValue)
        }
    }
}

struct ColorSliderView_Previews: PreviewProvider {
    static var previews: some View {
        ColorSliderView()
    }
}
