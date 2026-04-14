//
//  Comfirmacao.swift
//  ellev
//
//  Created by PEDRO MONGE SILVEIRA on 14/04/26.
//

import SwiftUI

struct Comfirmacao: View {
@State var QuantidadeTelas: Int
@State var tela: Int = 3
     
    var pix: Bool = false
    var cartao: Bool = false
    
    var body: some View {
        
        NavigationStack{
            ZStack{
                Color("FundodeTelasColor")
                    .edgesIgnoringSafeArea(.all)
                
                VStack{
                    
                    Text("Realize o Pagamento")
                        .font(.custom("jost-medium", size: 20))
                        .foregroundStyle(.tex)
                    Spacer(minLength: 27)
                    AndamentoCompra(QuantidadeTelas: QuantidadeTelas, tela: tela)
                    
                    Spacer(minLength: 27)
                    Text("Resumo do pagamento")
                        .font(.custom("Helvetica-Bold", size: 16))
                        .foregroundStyle(.tex)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
//
//                    resumo do pagamento
                        VStack(alignment: .leading, spacing: 5){
                            Text("Data de partida:" + " 16 / 04 / 2026")
                                .font(.custom("jost-bold", size: 15))
                            
                            Text("Horário de partida: " + "08:30    ")
                                .font(.custom("jost-bold", size: 15))
                               
                   
                                
                                HStack{
                                    Image("Conection")
                                        .resizable()
                                        .frame(width: 30, height: 40)
                                    VStack{
                                        HStack{
                                        Text("Partida: ")
                                            .font(.custom("jost-bold", size: 12))
                                        Text("Aeroporto Congonhas (CGH)")
                                            .font(.custom("jost", size: 12))
                                        }
                                        
                                        HStack{
                                        Text("Destino: ")
                                            .font(.custom("jost-bold", size: 12))
                                            Text("Aeroporto Internacional de São Paulo/Guarulhos (GRU)")
                                                .font(.custom("jost", size: 12))
                                                .padding(.top, 1)
                                        }
                                        
                                }
                           
                            }
                            
                            
                            HStack{
                                Text("Piloto:")
                                    .font(.custom("jost-bold", size: 15))
                                
                                Text("Calvin Bastos Lima")
                                    .font(.custom("helvetica-regular", size: 12))
                            }
                            HStack{
                                Text("Helicóptero:")
                                    .font(.custom("jost-bold", size: 15))
                                
                                Text("Airbus H145")
                                    .font(.custom("helvetica-regular", size: 12))
                            }
                            HStack{
                                Text("Acompanhantes:")
                                    .font(.custom("jost-bold", size: 15))
                                
                                Text("Joana Bela")
                                    .font(.custom("helvetica-regular", size: 12))
                            }
                            
                            
                            
                            
                            
                            HStack{
                                Text("Valor:")
                                    .font(.custom("jost-bold", size: 15))
                                
                                Text("R$ 1.000,00")
                                    .font(.custom("helvetica-bold", size: 15))
                            }
                            .padding(.top, 10)
                            
                            
                        }
                        .padding(.horizontal, 20)
                        .padding(.vertical, 15)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.card)
                        .foregroundStyle(Color.fundodeTelas)
                        .cornerRadius(10)
                    Spacer()
                    
                    Button{}label: {
                        HStack{
                            Image(systemName: "creditcard.fill")
                                .foregroundStyle(Color.button)
                                Text("Cartão")
                                .font(.custom("helvetica-regular", size: 16))
                                .foregroundStyle(Color.fundodeTelas)
                        }
                      
                    }
                        
                    .background(Color.card)

                    Spacer()
                }
                .padding(.horizontal, 54)
            }
        }
    }
}

#Preview {
    Comfirmacao(QuantidadeTelas: 3)
}
