//
//  ColorView.swift
//  ColorizedAppSwiftUI
//
//  Created by Клоун on 13.09.2022.
//

import SwiftUI

struct ColorView: View {
    let red: Double
    let green: Double
    let blue: Double
    
    var body: some View {
        Rectangle()
            .frame(width: 300, height: 180)
            .foregroundColor(Color(red: red / 255, green: green / 255, blue: blue / 255))
            .clipShape(Capsule())
            .overlay(Capsule().stroke(.white, lineWidth: 5))
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(red: 100, green: 100, blue: 100)
    }
}
