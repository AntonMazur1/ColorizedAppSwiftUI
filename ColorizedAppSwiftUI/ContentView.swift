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
    
    @FocusState var keyboardActrive: Bool
    
    var body: some View {
        ZStack {
            Color(.yellow)
                .ignoresSafeArea()
                .onTapGesture { keyboardActrive = false }
            VStack() {
                ColorView(red: redSliderValue, green: greenSliderValue, blue: blueSliderValue)
                
                Spacer()
                ColorSliderView(sliderValue: $redSliderValue, sliderColor: .red)
                ColorSliderView(sliderValue: $greenSliderValue, sliderColor: .green)
                ColorSliderView(sliderValue: $blueSliderValue, sliderColor: .blue)
                Spacer()
            }
            .focused($keyboardActrive)
            .toolbar(content: {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    Button("Done") {
                        keyboardActrive = false
                    }
                }
            })
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
