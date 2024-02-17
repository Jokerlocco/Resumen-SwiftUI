//
//  ProgressViewT.swift
//  ResumenSwiftUI
//
//  Created by Gonzalo Arques on 16/2/24.
//

import SwiftUI

struct ProgressViewT: View {
    
    @State var isLoading: Bool = false
    
    @State var progress: Float = 0.0
    
    var body: some View {
        VStack {
            if isLoading {
                ProgressView("Cargando...") // Nos sirve para poner una "pantalla de carga"/Spinner mientras se realiza una acción (como descargar datos de backend).
                    .scaleEffect(2) // Lo hacemos más grande
            }
            Button("Cargando") {
                isLoading = !isLoading // Cada vez que se pulse el botón, activará/desactivará el ProgressView
            }.padding(.top, 40)
            
            Spacer()
            
            // Alternativa de diseño de ProgressView:
            ProgressView(value: progress)
            Button("Cargando") {
                progress += 0.1 // Cada vez que se pulse el botón, aumentará el progreso de esta ProgressView de tipo barra de carga, hasta llegar a un máximo de 1.
            }.padding(.top, 40)
        }.padding(32)
    }
}

#Preview {
    ProgressViewT()
}
