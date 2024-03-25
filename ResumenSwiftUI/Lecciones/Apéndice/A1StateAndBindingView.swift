//
//  A1StateAndBindingView.swift
//  ResumenSwiftUI
//
//  Created by Gonzalo Arques on 28/2/24.
//

import SwiftUI

struct A1StateAndBindingView: View {
    
    /* Usamos @State cuando necesitamos proyectar el valor de una variable en un struct (view), concretamente,
     en la misma en la que ha sido creada.
     Pero también podemos usarla para mandarle valor a una de tipo @Binding.
     @Binding se usa en una variable de un struct en la que su valor será dado en otra view. Vamos a verlo: */
    
    @State var counter: Int = 0
    
    var body: some View {
        CounterView(counter: $counter)
    }
}

struct CounterView: View {
    
    @Binding var counter: Int
    
    var body: some View {
        VStack(spacing: 20) {
            Text("\(counter)")
                .font(.largeTitle)
            Button("Incrementar") {
                counter += 1
            }
        }
    }
    
}

#Preview {
    A1StateAndBindingView()
}
