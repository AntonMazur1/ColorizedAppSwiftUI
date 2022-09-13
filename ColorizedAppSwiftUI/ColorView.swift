//
//  ColorView.swift
//  ColorizedAppSwiftUI
//
//  Created by Клоун on 13.09.2022.
//

import SwiftUI

struct ColorView: View {
    let color: Color
    var body: some View {
        Rectangle()
            .frame(width: 300, height: 180)
            .foregroundColor(color)
            .clipShape(Capsule())
            .overlay(Capsule().stroke(.white, lineWidth: 5))
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(color: .black)
    }
}
