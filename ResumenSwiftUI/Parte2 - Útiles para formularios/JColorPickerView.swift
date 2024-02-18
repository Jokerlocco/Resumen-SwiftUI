//
//  ColorPickerView.swift
//  ResumenSwiftUI
//
//  Created by Gonzalo Arques on 16/2/24.
//

import SwiftUI

struct JColorPickerView: View {
    
    @State var color: Color = .blue
    
    var body: some View {
        VStack {
            Rectangle()
                .foregroundColor(color)
                .frame(width: 300, height: 60)
            ColorPicker("Selecciona un color", selection: $color)
            Spacer()
        }.padding(60)
    }
}

#Preview {
    JColorPickerView()
}
