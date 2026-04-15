//
//  cardAcompanhante.swift
//  ellev
//
//  Created by JOAO CLAUDIO DOS SANTOS SOUZA on 14/04/26.
//

import SwiftUI

struct cardAcompanhante: View {
    
    var acompanhante: Acompanhantes
    @Environment(SchedulingViewModel.self) var viewModel
    
    var body: some View {
        HStack {
            
            Spacer()
            
            Text(acompanhante.nome)
                .font(.custom("Helvetica", size: 20))
                .foregroundStyle(.fundodeTelas)
                .padding(.leading, 20)
            
            Spacer()
            
            Button(action: {
                viewModel.acompanhantesSelecionados.removeAll(where: { $0.id == acompanhante.id })
            }) {
                Image(systemName: "xmark.circle.fill")
                    .font(.system(size: 20))
                    .foregroundStyle(.fundodeTelas, .button)
            }
        }
        .padding(10)
        .background(.card)
        .cornerRadius(2)
    }
}

//#Preview {
//    cardAcompanhante()
//}
