//
//  AgendamentoAconpanhantes.swift
//  ellev
//
//  Created by PEDRO MONGE SILVEIRA on 14/04/26.
//

import SwiftUI


struct AgendamentoAcompanhantes: View {
    @State private var viewModel = SchedulingViewModel()
    
    @State private var showAcompanhantes = false
    
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
                    
                    VStack {
                        Button(action: {
                            showAcompanhantes.toggle()
                        }) {
                            HStack {
                                Text("Selecionar passageiros(as)")
                                    .font(Font.custom("Helvetica", size: 16))
                                    .foregroundColor(.inputTexButton)
                                Spacer()
                                Image(systemName: showAcompanhantes ? "chevron.up" : "chevron.down")
                                    .foregroundColor(.inputTexButton)
                            }
                            .padding(10)
                            .background(Color.inputButton)
                            .cornerRadius(2)
                        }
                        .overlay(alignment: .top) {
                            if showAcompanhantes {
                                ScrollView {
                                    ListOverlay(viewModel: viewModel, show: $showAcompanhantes, infoList: "passenger")
                                }
                                .frame(height: 400)
                                .offset(y: 39)
                            }
                        }
                    }
                    .zIndex(1)
                    .padding(.bottom, -10)
                    
                    VStack(spacing: 10) {
                        ForEach(viewModel.acompanhantesSelecionados) { acompanhante in
                            cardAcompanhante(acompanhante: acompanhante, viewModel: viewModel)
                        }
                    }
                    
                    HStack {
                        NavigationLink {
                            AddAcompanhantes(viewModel: viewModel)
                        }label: {
                            Image(systemName: "plus.circle.fill")
                                .font(.system(size: 20))
                                .foregroundStyle(.button)
                            
                            Text("Cadastrar Passageiro(a)")
                                .font(.custom("Jost", size: 16))
                                .foregroundStyle(.button)
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Spacer()
                    
                    NavigationLink{
                        Comfirmacao(QuantidadeTelas: 3, tela: 3)
                    } label:{
                        Text("Ir para Pagamento")
                            .font(Font.custom("Jost", size: 20))
                            .frame(maxWidth: .infinity, minHeight: 44)
                            .background(Color("ButtonColor"))
                            .foregroundColor(Color("FundodeTelasColor"))
                            .cornerRadius(50)
                    }
                    
                }
                .padding(.horizontal, 54)
                .padding(.vertical, 50)
                .environment(viewModel)
            }
        }
        

    }
}

#Preview {
    AgendamentoAcompanhantes()
}
