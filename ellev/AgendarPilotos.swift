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
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.fundodeTelas)
                    .ignoresSafeArea(edges: .all)
                ScrollView {
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
                                showPilots = showPilots == false ? true : false
                            }) {
                                HStack {
                                    Text("Pilotos")
                                        .font(Font.custom("Helvetica", size: 16))
                                        .foregroundColor(.inputTexButton)
                                    Spacer()
                                    Image(systemName: "chevron.down")
                                        .foregroundColor(.inputTexButton)
                                }
                                .padding(10)
                                .background(Color.inputButton)
                                .cornerRadius(2)
                            }
                            
                            if showPilots {
                                ScrollView {
                                    PilotsOverlay()
                                }
                                .frame(maxHeight: 350)
                            }
                        }
                        .padding(.bottom, 20)
                        
                        Text("Informações do piloto")
                            .foregroundStyle(.button)
                            .font(.custom("Helvetica-Bold", size: 16))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        CardPiloto(piloto: .calvin)
                        
                        Spacer()
                        
                        NavigationLink{
                            
                        }label: {
                            Text("Escolha os passageiros")
                                .font(Font.custom("Jost-regular", size: 20))
                                .frame(maxWidth: .infinity, minHeight: 44)
                                .background(Color("ButtonColor"))
                                .foregroundColor(Color("FundodeTelasColor"))
                                .cornerRadius(50)
                            
                        }
                    }
                    .padding(.horizontal, 54)
                    .padding(.vertical, 50)
                }
                
            }
            
        }
        
        
    }
    
}


#Preview {
    AgendarPilotos(QuantidadeTelas: 3)
}
