//
//  PositionersView.swift
//  ResumenSwiftUI
//
//  Created by Gonzalo Arques on 11/2/24.
//

import SwiftUI

struct PositionersView: View {
    var body: some View {
        
        VStack(alignment: .leading, spacing: 10) {
            Text("Siguiendo")
                .font(.largeTitle)
                .bold()
            Text("CANALES RECOMENDADOS")
                .foregroundColor(.gray)
            HStack {
                Rectangle()
                    .foregroundColor(.blue)
                    .frame(width: 118, height: 68)
                VStack(alignment: .leading) {
                    HStack {
                        Circle()
                            .foregroundColor(.blue)
                            .frame(width: 18, height: 18)
                        Text("username")
                    }
                    Text("streaming de programación...")
                        .foregroundColor(.gray)
                    Text("Solo hablando")
                        .foregroundColor(.gray)
                }
            }
        }
        
    }
}

#Preview {
    PositionersView()
}
