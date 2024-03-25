//
//  L18ListView.swift
//  ResumenSwiftUI
//
//  Created by Gonzalo Arques on 17/2/24.
//

import SwiftUI

struct Device {
    let title: String
    let imageName: String
}

let homeDevices = [
    Device(title: "Laptop", imageName: "laptopcomputer"),
    Device(title: "Mac mini", imageName: "macmini"),
    Device(title: "Mac Pro", imageName: "macpro.gen3"),
    Device(title: "Displays", imageName: "display.2"),
    Device(title: "Apple TV", imageName: "appletv")
]

let workDevices = [
    Device(title: "Iphone", imageName: "iphone"),
    Device(title: "Ipad", imageName: "ipad"),
    Device(title: "Airpods", imageName: "airpods"),
    Device(title: "Apple Watch", imageName: "applewatch")
]

let allDevices = homeDevices + workDevices


struct L18ListView: View {
    
    @State var showingFirstSection = true

    var body: some View {
        List { // Permite mostrar elementos en forma de lista
            Section(header: Text("All devices")) { // Como con los Form, podemos crear secciones dentro de las List (con headers y footers)
                ForEach(allDevices, id: \.title) { device in // En este caso, cogemos el title como id, pero más adelante veremos más en detalle esto, porque lo correcto es que tiene que ser único (que en este caso, lo es, porque los hemos puesto a mano, y ninguno se repite)
                    Label(device.title, systemImage: device.imageName)
                }
            }
            Section(header: Text("Home devices")) {
                ForEach(homeDevices, id: \.title) { device in
                    Label(device.title, systemImage: device.imageName)
                }
            }
            Section(header: Text("Work devices")) {
                ForEach(workDevices, id: \.title) { device in
                    Label(device.title, systemImage: device.imageName)
                }
            }
        }
        // Hay distintas formas de cambiar el diseño de la lista, por ejemplo, para crear desplegables.
    }
}

#Preview {
    L18ListView()
}
