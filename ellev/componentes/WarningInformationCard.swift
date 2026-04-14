//
//  WarningInformationCard.swift
//  ellev
//
//  Created by JOAO CLAUDIO DOS SANTOS SOUZA on 14/04/26.
//

import SwiftUI

struct WarningInformationCard: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Text("Lembrando que o limite de peso das bagagens é de 10kg por pessoa. ")
                .font(.custom("Helvetica", size: 13))
                .foregroundStyle(.fundodeTelas)
                .padding(.top, 15)
                .padding(.horizontal, 27)
            
            Text("Crianças menores de 18 anos não podem viajar desacompanhadas e menores de 2 anos não podem embarcar na aeronave.")
                .font(.custom("Helvetica", size: 13))
                .foregroundStyle(.fundodeTelas)
                .padding(.bottom, 15)
                .padding(.horizontal, 27)
        }
        .background(.card)
        .cornerRadius(5)
    }
}

#Preview {
    WarningInformationCard()
}
