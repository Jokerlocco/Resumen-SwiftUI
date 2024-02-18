//
//  StepperView.swift
//  ResumenSwiftUI
//
//  Created by Gonzalo Arques on 16/2/24.
//

import SwiftUI

struct NStepperView: View {
    
    @State var iPhoneCounter: Int = 1
    
    var body: some View {
        VStack {
            Text("Comprar iPhones")
                .font(.title)
            Form {
                // Un Stepper permite incrementar o decrementar un valor
                Stepper("Cantidad de iPhones: \(iPhoneCounter)",
                        value: $iPhoneCounter,
                        in: 1...10, // Podemos poner un rango de un mínimo de valor y un máxmio (en este caso, como mínimo tiene que ser 1, y como máximo 10
                        step: 2 // También podemos indicar la cantidad de aumento/reducción de valor por cada interacción con el Stepper
                )
            }
            
            Spacer()
            
            Form {
                // Constructor alternativo que nos permite hacer una acción cada vez que aumente/disminuya el valor:
                Stepper("Cantidad de iPhones: \(iPhoneCounter)") {
                    iPhoneCounter += 1
                    print("[Incrementar] Número \(iPhoneCounter)")
                } onDecrement: {
                    iPhoneCounter -= 1
                    print("[Decrementar] Número \(iPhoneCounter)")
                }
            }
        }.padding()
    }
}

#Preview {
    NStepperView()
}
