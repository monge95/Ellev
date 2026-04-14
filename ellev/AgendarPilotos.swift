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
    
    @State private var showPilots = false
    
    @State private var viewModel = SchedulingViewModel()
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.fundodeTelas)
                    .ignoresSafeArea(edges: .all)
                VStack(spacing: 20){
                    VStack(spacing: 30) {
                        Text("Selecione o piloto")
                            .font(Font.custom("Jost-Medium", size: 22))
                        
                        AndamentoCompra(QuantidadeTelas: QuantidadeTelas, tela: tela)
                    }
                    .padding(.bottom, 20)
                    
                    VStack(spacing: 10) {
                        Text("Escolha seu piloto")
                            .font(Font.custom("Helvetica-Bold", size: 16))
                            .foregroundColor(.button)
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Text("Selecione o piloto de sua preferência. Todos os nossos profissionais possuem certificações da ANAC. ")
                            .font(Font.custom("Helvetica", size: 12))
                            .foregroundColor(Color("TexColor"))
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }
                    
                    VStack {
                        Button(action: {
                            showPilots.toggle()
                        }) {
                            HStack {
                                Text("Pilotos")
                                    .font(Font.custom("Helvetica", size: 16))
                                    .foregroundColor(.inputTexButton)
                                Spacer()
                                Image(systemName: showPilots ? "chevron.up" : "chevron.down")
                                    .foregroundColor(.inputTexButton)
                            }
                            .padding(10)
                            .background(Color.inputButton)
                            .cornerRadius(2)
                        }
                        .overlay(alignment: .top) {
                            if showPilots {
                                ScrollView {
                                    ListOverlay(viewModel: viewModel, show: $showPilots, infoList: "pilot")
                                }
                                .frame(height: 400)
                                .offset(y: 39)
                            }
                        }
                    }
                    .zIndex(1)
                    .padding(.bottom, 20)
                    
                    Text("Informações do piloto")
                        .foregroundStyle(.button)
                        .font(.custom("Helvetica-Bold", size: 16))
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    CardPiloto(pilot: viewModel.pilotSelected)
                    
                    Spacer(minLength: 55)
                    
                    if QuantidadeTelas == 3 {
                        NavigationLink{
                            AgendamentoAcompanhantes()
                        }label: {
                            Text("Escolha os passageiros")
                                .font(Font.custom("Jost-regular", size: 20))
                                .frame(maxWidth: .infinity, minHeight: 44)
                                .background(Color("ButtonColor"))
                                .foregroundColor(Color("FundodeTelasColor"))
                                .cornerRadius(50)
                            
                        }
                    } else {
                        NavigationLink{
                            Comfirmacao(QuantidadeTelas: 2, tela: 2)
                        }label: {
                            Text("Ir para Pagamento")
                                .font(Font.custom("Jost-regular", size: 20))
                                .frame(maxWidth: .infinity, minHeight: 44)
                                .background(Color("ButtonColor"))
                                .foregroundColor(Color("FundodeTelasColor"))
                                .cornerRadius(50)
                        }
                        
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
    AgendarPilotos(QuantidadeTelas: 3)
}
