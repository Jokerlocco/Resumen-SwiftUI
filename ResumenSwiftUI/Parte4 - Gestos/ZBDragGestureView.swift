//
//  AADragGestureView.swift
//  ResumenSwiftUI
//
//  Created by Gonzalo Arques on 27/2/24.
//

import SwiftUI

struct ZBDragGestureView: View {
    
    @State var dragOffset: CGSize = .zero // Crearemos esta variable para almacenar la posición de la view según el "arrastre" que haga el usuario (con el gesto de DragGesture). Por defecto, la dejaremos en la ubicación por defecto de cualquier vista en SwiftUI (que es la x: 0, y: 0, z: 0): .zero, en CGSize.
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20)
            .frame(width: 100, height: 100)
            .offset(x: dragOffset.width, y: dragOffset.height) // La propiedad de "offset", nos permite modificar la ubicación (de x, y, z) por defecto de una vista. En este caso, usaremos la variable de dragOffset para ir modificando la ubicación de la view.
            .gesture(
                DragGesture() // Con el gesto de DragGesture, se "leerá" cuando el usuario arrastra la view.
                    .onChanged({ value in // Mientras se esté arrastrando....
                        dragOffset = value.translation // Almacenaremos en la variable de dragOffset, la posición actual del "arrastre" (es decir, donde el usuario tenga el dedo en ese momento). Por lo tanto, como es una variable State, y la tenemos puesta en la propiedad de .offset, actualizará la ubicación de la vista (rectángulo) en base al arrastre.
                    })
                    .onEnded({ _ in // Cuando se deje de arrastrar....
                        withAnimation(.spring()) { // Aplicaremos una animación de tipo "spring" para que la variable de dragOffset vuelva a la ubicación por defecto, es decir, al centro, de una forma muy agradable.
                            dragOffset = .zero
                        }
                    })
            )
    }
}

#Preview {
    ZBDragGestureView()
}
