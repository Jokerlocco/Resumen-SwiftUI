//
//  L15SliderView.swift
//  ResumenSwiftUI
//
//  Created by Gonzalo Arques on 16/2/24.
//

import SwiftUI

struct L15SliderView: View {
    
    @State var value: Float = 5.0
    @State var isEditing: Bool = false
    
    var body: some View {
        Form {
            Slider(
                value: $value,
                in: 0...10,
                step: 1,
                onEditingChanged: { editing in
                    isEditing = editing
                },
                minimumValueLabel: Text("min"),
                maximumValueLabel: Text("max")) {
                    Text("Selecciona número de iPhone") // A fecha de hacer esto, hay un bug en SwiftUI que provoca que este Text no se esté mostrando
                }
            Text("\(value)")
                .foregroundColor(isEditing ? .green : .black) // Si el slider se está editando, el texto se pondrá en verde, sino en negro.
        }
    }
}

#Preview {
    L15SliderView()
}
