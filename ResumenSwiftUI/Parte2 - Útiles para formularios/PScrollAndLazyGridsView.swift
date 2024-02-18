//
//  ScrollAndGridsView.swift
//  ResumenSwiftUI
//
//  Created by Gonzalo Arques on 17/2/24.
//

import SwiftUI

struct PScrollAndLazyGridsView: View {
    
    let elements = 1...500 // En este caso, mostraremos los números del 1 al 500
    
    let gridItems = [ // Un GridItem es una de las columnas (o filas en el caso de un LazyHGrid) de un LazyVGrid. En este caso, vamos a tener tres columnas (o filas en el caso del LazyHGrid)
        GridItem(.fixed(100)), // Se les puede aplicar distintos tipos de tamaño. En este caso, es un fijo de 100 de ancho. Ten en cuenta, que no se puede controlar el número de "columnas/vistas" (según el tamaño elegido) que pueden aparecer en el GridItem.
        GridItem(.flexible(minimum: 20)), // Es similar a fixed, pero en lugar de tener un tamaño fijo, el tamaño se adaptará según el espacio (con un mínimo de 20, en este caso)
        GridItem(.adaptive(minimum: 20)) // En este caso, los elementos que haya dentro, tendrán un ancho mínimo de 20, y como hemos puesto que sea adaptativo, conseguimos que quepan más "columnas/vistas" de elementos dentro de este GridItem
    ]
    
    var body: some View {
        VStack {
            ScrollView { // Permite hacer scroll a lo que contenga (por defecto, el scroll es vertical).
                // Los LazyGrid permite mostrar contenidos en columnas o filas (según el Grid elegido). Se llaman "Lazy" porque no cargan todo el contenido que tienen de golpe, solo la parte que se ve. De esta forma, se optima la memoria, por lo que es muy util si hay que mostrar muchos datos.
                LazyVGrid(columns: gridItems, content: { // En este caso, usamos un LazyVGrid, por lo que mostrará los datos en columnas verticales
                    ForEach(elements, id: \.self) { element in // Hacemos un ForEach para recorrer nuestro array de números del 1 al 500. En un futuro, veremos más acerca del id en un ForEach, porque en base a él, podemos identificar a cada elemento del array. De momento, solo usamos self, para que muestre todos los elementos, sin importar nada más (si se repite o no, etc).
                        VStack { // Por cada elemento, mostraremos un circulo y su número:
                            Circle()
                                .frame(height: 30)
                            Text("\(element)")
                        }
                    }
                })
            }
            
            Spacer()
            
            ScrollView(.horizontal) { // De esta forma, haremos que el scroll sea horizontal
                LazyHGrid(rows: gridItems, content: { // Ahora haremos lo mismo, pero con un LazyHGrid (horizontal)
                    ForEach(elements, id: \.self) { element in
                        VStack {
                            Circle()
                                .frame(height: 30)
                            Text("\(element)")
                        }
                    }
                })
            }
        }.padding()
    }
}

#Preview {
    PScrollAndLazyGridsView()
}
