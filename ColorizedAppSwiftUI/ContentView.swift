//
//  ContentView.swift
//  ColorizedAppSwiftUI
//
//  Created by Клоун on 13.09.2022.
//

import SwiftUI

struct ContentView: View {
    @State private var redSliderValue: Double = 0
    @State private var greenSliderValue: Double = 0
    @State private var blueSliderValue: Double = 0
    
    var body: some View {
        ZStack {
            Color(.yellow)
                .ignoresSafeArea()
            VStack() {
                ColorView(color: Color(
                    red: redSliderValue / 255,
                    green: greenSliderValue / 255,
                    blue: blueSliderValue / 255))
                Spacer()
                ColorSliderView(sliderValue: $redSliderValue, sliderColor: .red)
                ColorSliderView(sliderValue: $greenSliderValue, sliderColor: .green)
                ColorSliderView(sliderValue: $blueSliderValue, sliderColor: .blue)
                Spacer()
            }
            .onTapGesture { hideKeyboard() }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

extension View {
    func hideKeyboard() {
        let resign = #selector(UIResponder.resignFirstResponder)
        UIApplication.shared.sendAction(resign, to: nil, from: nil, for: nil)
    }
}
