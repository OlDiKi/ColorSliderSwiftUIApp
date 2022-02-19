//
//  SliderView.swift
//  ColorSliderSwiftUIApp
//
//  Created by Дмитрий Олейнер on 19.02.2022.
//

import SwiftUI

struct SliderView: View {
    
    @Binding var value: Double
    let color: Color
    
    var body: some View {
        HStack {
            Text("0").foregroundColor(color)
            Slider(value: $value, in: 0...255,
                   step: 1)
            Text("255").foregroundColor(color)
        }
        .padding(.horizontal)
    }
}

struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        SliderView(value: .constant(85), color: .red)
    }
}
