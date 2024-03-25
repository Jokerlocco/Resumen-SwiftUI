//
//  L25ATapGestureView.swift
//  ResumenSwiftUI
//
//  Created by Gonzalo Arques on 27/2/24.
//

import SwiftUI

struct L25ATapGestureView: View {
    var body: some View {
        
        // Forma 1 de añadir un tapGesture (es decir, que ocurra algo cuando el usuario tappe/pulse sobre la vista)
        RoundedRectangle(cornerRadius: 20)
            .frame(width: 100, height: 100)
            .gesture(
                TapGesture(count: 2) // Con count, podemos indicar cuantos taps tiene que hacer el usuario para que se ejecute el modificador que viene a continuación (en este caso, 2):
                    .onEnded({ _ in // Cuando se termine de realizar el tap...
                        print("View tapped") // Pintamos por pantalla
                    })
            )
        
        // Forma 2 (más sencilla)
        RoundedRectangle(cornerRadius: 20)
            .frame(width: 100, height: 100)
            .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            .onTapGesture { // También podríamos añadir el count y demás
                print("View tapped")
            }
        
    }
}

#Preview {
    L25ATapGestureView()
}
