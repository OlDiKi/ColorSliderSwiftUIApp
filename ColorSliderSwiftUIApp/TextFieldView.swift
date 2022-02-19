//
//  TextFieldView.swift
//  ColorSliderSwiftUIApp
//
//  Created by Дмитрий Олейнер on 19.02.2022.
//

import SwiftUI

struct TextFieldView: View {
    
    @Binding var text: String
    @Binding var value: Double
    
    var body: some View {
        TextField("", text: $text)
            .frame(width: 60, alignment: .center)
            .multilineTextAlignment(.center)
            .overlay(
                RoundedRectangle(cornerRadius: 5)
                    .stroke(lineWidth: 2)
                    .foregroundColor(.blue)
            )
            .shadow(color: Color.gray, radius: 3, x: 1, y: 2)
        
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView(text: .constant("85"), value: .constant(85))
    }
}
