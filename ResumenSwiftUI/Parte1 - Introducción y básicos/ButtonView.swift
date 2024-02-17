//
//  ButtonView.swift
//  ResumenSwiftUI
//
//  Created by Gonzalo Arques on 13/2/24.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        VStack {
            
            Button("Suscríbete") {
                print("Suscríbete a SwiftBeta")
            }
            
            // Botón igual que el anterior, pero con un constructor más complejo para poder hacer más cosillas:
            Button(action: {
                print("Suscríbete a SwiftBeta")
            }, label: {
                Text("Suscríbete")
            })
            
            Button(action: {
                print("Suscríbete a SwiftBeta")
            }, label: {
                Text("Suscríbete".uppercased())
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding()
                    .background(Color.red)
                    .cornerRadius(10)
                    .shadow(radius: 10)
            })
            
            Button(action: {
                print("Dale like")
            }, label: {
                Circle()
                    .fill(Color.green) // Llenar el círculo con el color verde
                    .frame(width: 200, height: 200)
                    .shadow(radius: 10)
                    .overlay( // Ponemos algo encima del círculo
                        Image(systemName: "hand.thumbsup.fill")
                            .foregroundColor(.white)
                            .font(.system(size: 70, weight: .bold))
                    )
            })
            
        }
    }
}

#Preview {
    ButtonView()
}
