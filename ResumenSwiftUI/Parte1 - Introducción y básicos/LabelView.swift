//
//  LabelView.swift
//  ResumenSwiftUI
//
//  Created by Gonzalo Arques on 13/2/24.
//

import SwiftUI

struct LabelView: View {
    var body: some View {
        Label("Suscribiros a SwiftBeta", systemImage: "hand.thumbsup.fill")
            .font(.title)
    }
}

#Preview {
    LabelView()
}
