//
//  WActionSheetView.swift
//  ResumenSwiftUI
//
//  Created by Gonzalo Arques on 26/2/24.
//

import SwiftUI

struct WActionSheetView: View {
    
    @State var isPresented: Bool = false
    
    var body: some View {
        
        VStack {
            Text("Suscríbte a SwiftBeta")
            Button("OK") {
                isPresented = true
            }
        }
        .actionSheet(isPresented: $isPresented, content: { // Los actionSheet son muy similares a los Alert, pero con un diseño distinto, y se muestra en la parte inferior de la pantalla. Su implemetanción y casos de usos es muy similar.
            ActionSheet(title: Text("Aprende SwiftUI con SwiftBeta"),
                        message: Text("Elige la opción que quieras"),
                        buttons: [ // En este caso, los botones se añaden con un array
                            .default(Text("SwiftUI"), action: {
                                print("Aprende SwiftUi")
                            }),
                            .default(Text("Nada")),
                            .destructive(Text("Cancelar"))
                        ]
            )
        })
        
    }
}

#Preview {
    WActionSheetView()
}
