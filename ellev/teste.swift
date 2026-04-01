//
//  teste.swift
//  ellev
//
//  Created by PEDRO MONGE SILVEIRA on 01/04/26.
//

import SwiftUI

struct teste: View {
    @State private var isButtonDisabled = true

      var body: some View {
        VStack {
          Button("Tap me") {
            print("Button tapped")
          }
          .disabled(isButtonDisabled)

          Button("\(isButtonDisabled ? "Enable" : "Disable") button") {
            isButtonDisabled.toggle()
          }
          .padding()
        }
          
           

      }
    }

    
#Preview {
    teste()
}
