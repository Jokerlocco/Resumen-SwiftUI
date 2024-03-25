//
//  L3StatePropertyView.swift
//  ResumenSwiftUI
//
//  Created by Gonzalo Arques on 13/2/24.
//

import SwiftUI

struct L3StatePropertyView: View {
    
    @State private var counter: Int = 0 // @State es una Property Wrapper para convertir una variable de un struct (un elemento no mutable) en mutable.
    
    var body: some View {
        VStack {
            Text("Counter \(counter)")
            Button("Incrementar valor") {
                counter += 1
            }
        }
    }
}

#Preview {
    L3StatePropertyView()
}
