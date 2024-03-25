//
//  L13TogggleView.swift
//  ResumenSwiftUI
//
//  Created by Gonzalo Arques on 16/2/24.
//

import SwiftUI

struct L13TogggleView: View {
    
    @State var isOn: Bool = false
    
    var body: some View {
        Form {
            Toggle("Mostrar saludo", isOn: $isOn) // Propiedad que recoge un true/false por parte del usuario. Es decir, es un interruptor.
            if isOn {
                Text("¡Hola mundo!")
            }
        }
    }
}

#Preview {
    L13TogggleView()
}
