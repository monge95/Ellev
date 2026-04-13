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
    @State private var PilotosSelecionados = false
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.fundodeTelas)
                    .ignoresSafeArea(edges: .all)
                VStack(){
                    Spacer()
                    Text("Selecione o piloto")
                        .font(Font.custom("jost", size: 22))
                    Spacer()
                    AndamentoCompra(QuantidadeTelas: QuantidadeTelas, tela: tela)
                    Spacer()
                    Text("Escolha seu piloto")
                        .font(Font.custom("helvatica", size: 14))
                        .foregroundColor(Color("TexColor"))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.vertical, 10)
                    
                    Text("Selecione o piloto de sua preferência. Todos os nossos profissionais possuem certificações da ANAC. ")
                        .font(Font.custom("helvatica", size: 12))
                        .foregroundColor(Color("TexColor"))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .listRowSeparator(.hidden)
                  
                        DisclosureGroup(
                            isExpanded: $PilotosSelecionados,
                            content: {
                                ListasPilotos(NomeDoCondutor: "Gabriela")
                                ListasPilotos(NomeDoCondutor: "Elisa")
                                ListasPilotos(NomeDoCondutor: "Alex")
                                ListasPilotos(NomeDoCondutor: "Calvin")
                                
                            },
                            label: {
                                Text("Escolha seu piloto")
                                    .font(Font.custom("helvatica", size: 14))
                                    .foregroundColor(Color.tex)
                                
                                    
                            }
                        )
                        .padding(10)
                        .listRowInsets(EdgeInsets())
                        .listRowSeparator(.hidden)
                        .background(Color.inputButton)
                        .cornerRadius(2)
                    
                    Spacer()
                }
                
                .padding(.horizontal, 54)
                
            }
            
        }
        
        
    }
    
}


#Preview {
    AgendarPilotos(QuantidadeTelas: 3)
}
