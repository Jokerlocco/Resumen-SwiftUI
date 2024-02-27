//
//  TTabView.swift
//  ResumenSwiftUI
//
//  Created by Gonzalo Arques on 18/2/24.
//

import SwiftUI

struct TTabView: View {
    var body: some View {
        TabView { // Es otra forma de navegar entre pantallas. Se pone una barra en la parte inferior.
            HomeView() // Vamos a extraer en una view aparte, todo el contenido de esta sección del TabView para crear un código más legible
                .tabItem { // Aquí indicamos el contenido de la opción de la navegación
                    Image(systemName: "house.fill")
                    Text("Home option")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "person.crop.circle.fill")
                    Text("Profile option")
                }
        }
        .accentColor(.pink) // Podemos cambiar el color de resaltado de lo que está seleccionado en el TabView
        
        Spacer()
        
        TabView {
            RoundedRectangle(cornerRadius: 20)
                .padding()
                .foregroundColor(.blue)
            RoundedRectangle(cornerRadius: 20)
                .padding()
                .foregroundColor(.red)
            HomeView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Home option")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "person.crop.circle.fill")
                    Text("Profile option")
                }
        }
        .frame(height: 400)
        .tabViewStyle(PageTabViewStyle()) // Podemos cambiar el diseño del TabView totalmente, por ejemplo, para navegar con un scroll
    }
}

struct HomeView: View {
    var body: some View {
        VStack {
            Image(systemName: "house.fill")
                .resizable()
                .scaledToFit()
                .frame(height: 200)
            Text("Home")
                .padding(.top, 32)
        }
    }
}

struct ProfileView: View {
    var body: some View {
        VStack {
            Image(systemName: "person.crop.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(height: 200)
            Text("Profile")
                .padding(.top, 32)
        }
    }
}

#Preview {
    TTabView()
}
