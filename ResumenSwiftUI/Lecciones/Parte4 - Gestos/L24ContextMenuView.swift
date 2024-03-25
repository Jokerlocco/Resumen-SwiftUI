//
//  L24ContextMenuView.swift
//  ResumenSwiftUI
//
//  Created by Gonzalo Arques on 26/2/24.
//

import SwiftUI

struct L24ContextMenuView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .padding()
            .contextMenu(ContextMenu(menuItems: { // Podemos aplicar un contextMenu a una View para que cuando el usuario mantenga pulsado sobre ella, le aparezcan algunas opciones (en este caso, vamos a incluir tres botones):
                Button("SwiftUI") {
                    print("Quiero aprender Swift UI")
                }
                Button("Xcode") {
                    print("Quiero aprender Xcode")
                }
                Button(action: {
                    print("Quiero aprender Swift")
                }, label: {
                    Label("Swift", systemImage: "iphone")
                })
            }))
    }
}

#Preview {
    L24ContextMenuView()
}
