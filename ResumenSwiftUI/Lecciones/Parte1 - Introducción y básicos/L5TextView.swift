//
//  L5TextView.swift
//  ResumenSwiftUI
//
//  Created by Gonzalo Arques on 13/2/24.
//

import SwiftUI

struct L5TextView: View {
    var body: some View {
        VStack {
            // Distintas propiedades para Text:
            Text("Suscribiros a SwiftBeta para aprender a programar en SwiftUI si te gusta el video peudes sdarle a Like")
                .font(.largeTitle)
                .foregroundColor(.yellow)
                .underline()
                .rotation3DEffect(
                    .degrees(20),
                    axis: (x: 1, y: 0, z: 0)
                )
                .shadow(color: .gray, radius: 2, x: 0, y: 10)
                .lineLimit(10)
                .lineSpacing(10)
                .padding()
            
            // Juntar varios text:
            Text("Hola")
                .font(.largeTitle)
                .foregroundColor(.blue)
            + Text("Que tal?")
                .font(.body)
                .bold()
            + Text("Me gusta el quesito")
                .font(.headline)
                .foregroundColor(.gray)
            
            Text(Date(), style: .date) // Fecha
            Text(Date(), style: .timer) // Contador
            Text(Date().addingTimeInterval(3600), style: .timer) // Decrementar el tiempo (1h)
            Text(Date(), style: .time) // Hora
            
        }.padding()

    }
}

#Preview {
    L5TextView()
}
