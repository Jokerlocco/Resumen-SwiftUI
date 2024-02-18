//
//  DatePickerView.swift
//  ResumenSwiftUI
//
//  Created by Gonzalo Arques on 15/2/24.
//

import SwiftUI

struct IDatePickerView: View {
    
    @State var currentDate: Date = Date()
    
    var body: some View {
        VStack {
            DatePicker("Seleccionar fecha", selection: $currentDate)
                .datePickerStyle(.graphical) // Con esto, podemos cambiar el estilo visual del calendario.
                .padding()
            
            Form { // En otra View, veremos este componente de Form, pero en este caso, lo usamos para que quede más bonito
                // Vamos a ver otro constructor:
                DatePicker("Fecha",
                           selection: $currentDate,
                           in: Date()..., // De esta forma, estamos indicando un rango de fecha: Que el calendario solo permita desde la fecha actual (Date()) hasta las futuras (...)
                           displayedComponents: .date // Solo mostramos (y solo se podrá seleccionar) la fecha en este caso (si clican sobre él, ya pueden elegir el calendario (solo fechas del futuro por la anterior propiedad))
                )
                Text(currentDate, style: .date) // Mostramos la fecha de una forma simple, y sin formateos
                    .bold()
            }
        }
    }
}

#Preview {
    IDatePickerView()
}
