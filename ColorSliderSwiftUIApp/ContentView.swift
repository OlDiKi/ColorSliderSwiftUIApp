//
//  ContentView.swift
//  ColorSliderSwiftUIApp
//
//  Created by Дмитрий Олейнер on 19.02.2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var red = Double.random(in: 0...255)
    @State private var green = Double.random(in: 0...255)
    @State private var blue = Double.random(in: 0...255)
    
    var body: some View {
        
        VStack(spacing: 30) {
            ColorView(red: red, green: green, blue: blue)
            
            VStack {
                SliderView(value: $red, color: .red)
                SliderView(value: $green, color: .green)
                SliderView(value: $blue, color: .blue)
            }
            .frame(height: 150)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
