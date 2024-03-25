//
//  L8TextEditorView.swift
//  ResumenSwiftUI
//
//  Created by Gonzalo Arques on 15/2/24.
//

import SwiftUI

struct L8TextEditorView: View {
    
    @State var text = "Escribe algo..."
    @State var counter = 0
    
    var body: some View {
        VStack {
            TextEditor(text: $text) // Muy similar al TextField y SecureField, pero orientado a almacenar una cantidad de texto. Al superar x número de carácteres, se podrá hacer scroll.
                .font(.title)
                .autocapitalization(.none)
                .disableAutocorrection(true)
                .foregroundColor(.blue)
                .padding()
                .onChange(of: text) { oldValue, newValue in
                    counter = newValue.count
                }
            Text("\(counter)") // Crearemos un contador de carácteres
                .foregroundColor(counter <= 50 ? .green : .red) // Si el número de caracteres es menor o igual a 50, el texto del contador será verde, sino, rojo
                .font(.largeTitle)
                .padding()
        }
    }
}

#Preview {
    L8TextEditorView()
}
