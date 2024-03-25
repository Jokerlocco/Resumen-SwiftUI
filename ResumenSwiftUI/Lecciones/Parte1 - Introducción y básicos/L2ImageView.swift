//
//  L2ImageView.swift
//  ResumenSwiftUI
//
//  Created by Gonzalo Arques on 12/2/24.
//

import SwiftUI

struct L2ImageView: View {
    var body: some View {
        
        /* Al añadir la imagen en los assets, en sus atributos,
         le hemos puesto "Single scale" (porque solo es una única
         imagen de un único tamaño), y además, hemos marcado la opción
         de resizing: "Preserve Vector Data", para que no pierda calidad
         al dimensionarla.
         La imagen original tiene un tamaño de 48 de ancho x 34 de alto.
         */
        
        VStack(spacing: 50) {
            Image("youtube")
                .resizable() // Hacemos que la imagen sea dimensionable (y de hecho, ocupa todo el ancho y el alto)
                .scaledToFit() // Es recomendable usarlo siempre después del resizable, para que la imagen tenga un ancho encajado.
                .frame(width: 96, height: 68)
            
            Image("youtube")
                .renderingMode(.template) // Con esto, podemos modificar la imagen original con distintos atributos, por ejemplo, podemos cambiar el color fácilmente (pero muchas burradas más complejas):
                .foregroundColor(.green)
            
            // SF Symbols: símbolos gratis del sistema, solo hay que poner los nombres así:
            Image(systemName: "star")
                .resizable()
                .scaledToFit()
                .frame(width: 200)
                .foregroundColor(.blue)
        }
        
    }
}

#Preview {
    L2ImageView()
}
