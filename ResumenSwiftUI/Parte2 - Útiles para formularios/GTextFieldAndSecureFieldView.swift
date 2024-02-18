//
//  TextFieldView.swift
//  ResumenSwiftUI
//
//  Created by Gonzalo Arques on 15/2/24.
//

import SwiftUI

struct GTextFieldAndSecureFieldView: View {
    
    @State var username: String = ""
    @State var password: String = ""
    
    var body: some View {
        VStack {
            TextField("Username", // placeholder del input (para guiar al usuario con lo que tiene que poner)
                      text: $username) // 'text' es de tipo Binding, es decir, requiere que se le específique una variable @State (o similar), es decir, que sea mutable, e indicarle el símbolo del $.
                .keyboardType(.emailAddress) // Tipo de teclado que se muestra cuando se escribe en el TextField. En este caso, uno adecuado para escribir un email.
                .disableAutocorrection(true)
                .padding(8)
                .font(.headline)
                .background(Color.gray.opacity(0.3))
                .cornerRadius(6)
                .padding(.horizontal, 60)
                .padding(.top, 40)
                .onChange(of: username) { oldValue, newValue in // Evento que se ejecuta cada vez que detecte un cambio en el TextField
                    print("New username value  \(newValue)")
                }
            SecureField("Password", text: $password) // Es igual al TextField, pero, ocultando la información que se escribe (es decir, es perfecto para contraseñas)
                .keyboardType(.default)
                .disableAutocorrection(true)
                .autocapitalization(.none) // Evitamos que se pongan mayúsculas automáticamente
                .padding(8)
                .font(.headline)
                .background(Color.gray.opacity(0.3))
                .cornerRadius(6)
                .padding(.horizontal, 60)
                .onChange(of: password) { oldValue, newValue in
                    print("New password value \(newValue)")
                }
            Spacer()
        }
    }
}

#Preview {
    GTextFieldAndSecureFieldView()
}
