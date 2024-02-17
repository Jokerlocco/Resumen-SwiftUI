//
//  FormView.swift
//  ResumenSwiftUI
//
//  Created by Gonzalo Arques on 17/2/24.
//

import SwiftUI

struct FormView: View {
    
    @State var deviceName: String = ""
    @State var isNetworkOn: Bool = true
    @State var date: Date = Date()
    @State var color: Color = .blue
    
    var body: some View {
        Form { // Los Form nos permiten meter componetes dentro de su diseño.
            Section(header: Text("Settings")) { // Ponemos poner un header
                TextField("Iphone 15 Pro", text: $deviceName)
                Toggle("Wi-Fi", isOn: $isNetworkOn)
            }
            
            Section(header: Text("Account"),
                    footer: // Y tambiém podemos poner un footer
                        HStack {
                            Spacer()
                            Label("version 1.0", systemImage: "iphone")
                            Spacer()
                        }
            ) {
                DatePicker("Date", selection: $date)
                ColorPicker("Color", selection: $color)
            }
        }
    }
}

#Preview {
    FormView()
}
