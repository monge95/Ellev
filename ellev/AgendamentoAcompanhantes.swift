//
//  AgendamentoAconpanhantes.swift
//  ellev
//
//  Created by PEDRO MONGE SILVEIRA on 14/04/26.
//

import SwiftUI


struct AgendamentoAcompanhantes: View {
    @State private var viewModel = SchedulingViewModel()
    
    var QuantidadeTelas: Int
    var tela:  Int = 2
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color(.fundodeTelas)
                    .ignoresSafeArea(edges: .all)
                VStack{
                    AndamentoCompra(QuantidadeTelas: QuantidadeTelas, tela: tela)
                    
                    
                    
                }.padding(54)
            }
        }
        

    }
}

#Preview {
    AgendamentoAcompanhantes(QuantidadeTelas: 3)
}
