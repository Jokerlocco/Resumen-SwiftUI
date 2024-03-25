//
//  A2StateObjectAndObservedObjectView.swift
//  ResumenSwiftUI
//
//  Created by Gonzalo Arques on 28/2/24.
//

import SwiftUI

struct A2StateObjectAndObservedObjectView: View {
    
    @State private var counter: Int = 0
    
    var body: some View {
        VStack {
            Text("Counter: \(counter)")
                .bold()
                .font(.largeTitle)
                .padding()
            Button("Incrementar contador") {
                counter += 1
            }
            ListVideos()
            Spacer()
        }
    }
    
}

struct ListVideos: View {
    
    @StateObject private var videoViewModel = VideoViewModel() // Similar a @State, pero aplicado a objetos complejos (en lugar de a Int, String, etc)
    // Nota: Podríamos pasar el videoViewModel a otra view con ObservedObject (similar a @Binding, pero para objetos complejos).
    
    var body: some View {
        
        NavigationView {
            List(videoViewModel.videosModel, id: \.self) { video in
                Text(video)
            }
            .navigationTitle("SwiftBeta vídeos")
            .navigationBarItems(leading:
                Button("Añadir", action: videoViewModel.addMoretopics)
            )
        }
        
    }
    
}

// Con la siguiente clase, separamos el modelo de datos de las views, cosa que es lo correcto en cualquier arquitectura mobile. Las views solo se tendrían que centrar en dibujar datos en pantalla, y poco más.
final class VideoViewModel: ObservableObject { // Con ObservableObject hacemos que esta clase esté siendo "observada" por las views si cambia algo en su interior
    
    @Published var videosModel: [String] = [] // @Published es muy similar a @State, pero se utiliza en clases en lugar de en structs. Con ello, podemos proyectar el valor que tenga la variable @Published en el resto de views donde se esté usando (gracias también al prótocolo de ObservableObject).
    
    init() { // Incialización del array cuando se cree esta clase
        videosModel = [
            "Aprende SwiftUI",
            "Aprende xCode",
            "Aprende Swift"
        ]
    }
    
    func addMoretopics() {
        videosModel.append("Aprende CI/CD")
        videosModel.append("Aprende Git")
    }
    
}

#Preview {
    A2StateObjectAndObservedObjectView()
}
