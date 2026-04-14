//
//  AgendamentoAconpanhantes.swift
//  ellev
//
//  Created by PEDRO MONGE SILVEIRA on 14/04/26.
//

import SwiftUI


struct AgendamentoAcompanhantes: View {
    @State private var viewModel = SchedulingViewModel()
    
    var QuantidadeTelas: Int = 3
    var tela:  Int = 2
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color(.fundodeTelas)
                    .ignoresSafeArea(edges: .all)
                VStack(spacing: 20){
                    VStack(spacing: 30) {
                        Text("Selecione outro passageiro(a)")
                            .font(.custom("Jost-Medium", size: 20))
                            .foregroundStyle(.tex)
                        
                        AndamentoCompra(QuantidadeTelas: QuantidadeTelas, tela: tela)
                    }
                    .padding(.bottom, 20)

                    VStack(spacing: 10) {
                        Text("Passageiros(as)")
                            .font(.custom("Helvetica-Bold", size: 16))
                            .foregroundStyle(.button)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Text("Escolha quem viajará com você nesta jornada. Você pode selecionar contatos salvos e até fazer o cadastro de um novo(a) passageiro(a). ")
                            .font(.custom("Helvetica", size: 12))
                            .foregroundStyle(.tex)
                    }
                    
                    WarningInformationCard()
                    
                }
                .padding(.horizontal, 54)
                .padding(.vertical, 50)
            }
        }
        

    }
}

#Preview {
    AgendamentoAcompanhantes()
}
