//
//  L12LinkView.swift
//  ResumenSwiftUI
//
//  Created by Gonzalo Arques on 16/2/24.
//

import SwiftUI

struct L12LinkView: View {
    var body: some View {
        VStack {
            // Hacer que abra el navegador por defecto y cargue la URL dada (Para probarlo, tienes que COMPILAR sí o sí):
            Link("Ir a SwiftBeta", destination: URL(string: "https://www.swiftbeta.com")!)
                .font(.title)
                .foregroundColor(.white)
                .padding()
                .background(Color.black)
                .cornerRadius(12)
            
            Spacer()
            
            // Hacer que abra un apartado del sistema (en este caso, los ajustes del móvil). Para probarlo, tienes que COMPILAR sí o sí
            Link(destination: URL(string: UIApplication.openSettingsURLString)!,
                 label: {
                    Label("Settings", systemImage: "gear")
                        .font(.title)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.black)
                        .cornerRadius(12)
            })
        }.padding(50)
    }
}

#Preview {
    L12LinkView()
}
