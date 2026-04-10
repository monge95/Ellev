//
//  AgendarPilotos.swift
//  ellev
//
//  Created by PEDRO MONGE SILVEIRA on 10/04/26.
//

import SwiftUI

struct AgendarPilotos: View {
    var QuantidadeTelas: Int
    var tela:  Int = 1
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.fundodeTelas)
                    .ignoresSafeArea(edges: .all)
                VStack(spacing: 20){
                    
                    Text("Selecione o piloto")
                        .font(Font.custom("jost", size: 22))
                
                    AndamentoCompra(QuantidadeTelas: QuantidadeTelas, tela: tela)
         
                    Text("Escolha seu piloto")
                        .font(Font.custom("helvatica", size: 14))
                        .foregroundColor(Color("TexColor"))
                        .multilineTextAlignment(.center)
                }
            }
            
            
        }
        
    }
}

#Preview {
    AgendarPilotos(QuantidadeTelas: 3)
}
