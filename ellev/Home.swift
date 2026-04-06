//
//  SwiftUIView.swift
//  ellev
//
//  Created by PEDRO MONGE SILVEIRA on 02/04/26.
//

import SwiftUI

struct Home: View {
    var body: some View {
        NavigationStack {
            Text("Hello, World!")
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
        Home()
}
