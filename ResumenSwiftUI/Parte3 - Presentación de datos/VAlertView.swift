//
//  VAlertView.swift
//  ResumenSwiftUI
//
//  Created by Gonzalo Arques on 26/2/24.
//

import SwiftUI

struct VAlertView: View {
    
    @State var isPresented: Bool = false
    
    var body: some View {
        
        VStack {
            Text("Suscríbte a SwiftBeta")
            Button("OK") { // Crearemos este botón para mostrar el alert cuando se pulse sobre él. Las Alert son mensajes que aparecen en mitad de la pantalla (pop ups, modals, etc) para darle cierta información al usuario. Es posible incluirle varios botones,
                isPresented = true
            }
        }
        .alert(isPresented: $isPresented, content: { // Con este modificador, haremos que se esté escuchando la variable $isPresented para mostrar la alerta. Requiere incluir en su interior una view de Alert.
            Alert(title: Text("Suscríbete a SwiftBeta"), // Creamos la Alert con este constructor que tiene un título, un subtítulo, y dos botones (a la izquierda y a la derecha)
                  message: Text("Cada semana un nuevo vídeo"),
                  primaryButton:
                    .default(Text("Aceptar"), action: { // Hay distintos tipos de botones que podemos poner, en este caso, ponemos el por defecto.
                        print("Button tapped")
                    }),
                  secondaryButton: .destructive(Text("Cancelar")) // Con este tipo de botón, haremos que sea de colo rojo
            )
        })
        
    }
}

#Preview {
    VAlertView()
}
