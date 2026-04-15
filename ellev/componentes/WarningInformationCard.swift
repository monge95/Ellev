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
            Text("Lembrando que o limite de peso das bagagens é de **10kg por pessoa**.")
                .font(.custom("Helvetica", size: 13))
                .foregroundStyle(.fundodeTelas)
            
            Text("Crianças **menores de 18 anos** não podem viajar desacompanhadas e **menores de 2 anos não podem embarcar** na aeronave.")
                .font(.custom("Helvetica", size: 13))
                .foregroundStyle(.fundodeTelas)
        }
        .padding(.horizontal, 27)
        .padding(.vertical, 15)
        .frame(maxWidth: .infinity)
        .background(.card)
        .cornerRadius(5)
    }
}

#Preview {
    WarningInformationCard()
}
