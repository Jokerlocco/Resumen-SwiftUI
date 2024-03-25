//
//  L19NavigationViewAndNavigationLink.swift
//  ResumenSwiftUI
//
//  Created by Gonzalo Arques on 18/2/24.
//

import SwiftUI

struct L19NavigationViewAndNavigationLink: View {
    var body: some View {
        // NavigationView (junto a un NavigationLink) nos sirven para presentar una pila de vistas de una forma jerárquica
        NavigationView {
            List {
                NavigationLink("Option Menu 1", destination: Text("Some information")) // El NavigationLink creará una nueva vista (en este caso, un Text) en la jerarquía de vistas del NavigationView. Aparecerá una flecha en esta opción. También se podrá navegar entre ellas con la barra superior de navegación.
                NavigationLink("Option Menu 2", destination: Button("Tap me!", action: {
                    print("Hello iOS Developer")
                }))
                Text("Option Menu 3")
                Text("Option Menu 4")
            }
            // Podemos añadir unos modificadores al NavigationView para modificar sus características (aunque realmente, hay que añadirlo a su View hija (en este caso, un List), y no a él directamente):
            .navigationTitle("Menu")
            .navigationBarTitleDisplayMode(.large) // Podemos cambiar el modo en como se muestra el título
            .navigationBarHidden(false) // Podemos ocultar el título (aunque seguirá estando ahí)
            .navigationBarItems(trailing: Button("Done", action: { // Podemos poner elementos en la barra de navegación de NavigationView (izquierda, derecha...)
                print("NavigationView Button")
            }))
        }
    }
}

#Preview {
    L19NavigationViewAndNavigationLink()
}
