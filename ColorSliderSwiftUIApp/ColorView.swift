//
//  ColorView.swift
//  ColorSliderSwiftUIApp
//
//  Created by Дмитрий Олейнер on 19.02.2022.
//

import SwiftUI

struct ColorView: View {
    
    let red: Double
    let green: Double
    let blue: Double
    
    var body: some View {
        Color(red: red / 255,
              green: green / 255,
              blue: blue / 255)
            .frame(height: 170)
            .overlay(
                RoundedRectangle(cornerRadius: 15)
                    .stroke(Color.white, lineWidth: 15)
            )
    }
}

struct ColorView_Previews: PreviewProvider {
    static var previews: some View {
        ColorView(red: 150, green: 100, blue: 210)
    }
}
