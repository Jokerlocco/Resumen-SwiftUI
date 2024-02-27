//
//  UModosDePresentarPantallaView.swift
//  ResumenSwiftUI
//
//  Created by Gonzalo Arques on 18/2/24.
//

import SwiftUI

struct UModosDePresentarPantallaView: View {
    
    @State var isPresented: Bool = false
    
    var body: some View {
        VStack {
            Text("View 1")
                .padding()
            Button("OK") {
                isPresented = true
            }
        }
        .fullScreenCover( // Con esta propiedad, haremos que la view correspondiente se presente ocupando toda la pantalla. Podemos usar .sheet en su lugar, para cambiar el modo de presentar la pantalla (con .sheet, queda un margen en la parte superior). De esta forma, se puede cerrar arrastándola hacia abajo.
            isPresented: $isPresented, // Usaremos esta variable @State, para controlar si debe de aparecer o desaparecer la pantalla. Recordad poned el $ para proyectar el valor en la view
            onDismiss: { // Cuando se cierre la view presentada, pondremos la variable en false:
                isPresented = false
            },
            content: { // Nueva view a cargar cuando isPresented sea true:
                ZStack {
                    Color.red.ignoresSafeArea()
                    Button("View 2 😄") {
                        isPresented = false // Botón para volver atrás (View 1)
                    }
                }
        })
    }
}

#Preview {
    UModosDePresentarPantallaView()
}
