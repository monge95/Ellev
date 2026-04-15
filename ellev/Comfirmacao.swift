//
//  Comfirmacao.swift
//  ellev
//
//  Created by PEDRO MONGE SILVEIRA on 14/04/26.
//

import SwiftUI

struct Comfirmacao: View {
    @State var QuantidadeTelas: Int
    @State var tela: Int
    
    @State private var pix = false
    @State private var cartao = true
    
    @Environment(SchedulingViewModel.self) var viewModel
    
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
                        Text("Data de partida:" + "\(viewModel.departureDate)")
                            .font(.custom("jost-bold", size: 15))
                        
                        Text("Horário de partida: " + "\(viewModel.departureTime)")
                            .font(.custom("jost-bold", size: 15))
                        
                        
                        
                        HStack{
                            Image("Conection")
                                .resizable()
                                .frame(width: 30, height: 40)
                            VStack{
                                HStack{
                                    Text("Partida: ")
                                        .font(.custom("jost-bold", size: 12))
                                    Text("\(viewModel.departureLocation)")
                                        .font(.custom("jost", size: 12))
                                }
                                
                                HStack{
                                    Text("Destino: ")
                                        .font(.custom("jost-bold", size: 12))
                                    Text("\(viewModel.arrivalLocation)")
                                        .font(.custom("jost", size: 12))
                                        .padding(.top, 1)
                                }
                                
                            }
                            
                        }
                        
                        
                        HStack{
                            Text("Piloto:")
                                .font(.custom("jost-bold", size: 15))
                            
                            Text(viewModel.pilotSelected.name)
                                .font(.custom("helvetica-regular", size: 12))
                        }
                        HStack{
                            Text("Helicóptero:")
                                .font(.custom("jost-bold", size: 15))
                            
                            Text(viewModel.pilotSelected.helicopterModel)
                                .font(.custom("helvetica-regular", size: 12))
                        }
                        
                        if viewModel.vaiAcompanhado {
                            
                            HStack{
                                Text("Acompanhantes:")
                                    .font(.custom("jost-bold", size: 15))
                                
                                Text("bla bla")
                                    .font(.custom("helvetica-regular", size: 12))
                            }
                        }
                        
                        
                        
                        
                        
                        HStack{
                            Text("Valor:")
                                .font(.custom("jost-bold", size: 15))
                            
                            Text("R$ 15.000,00")
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
                    
                    Text("Formas de Pagamentos")
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    VStack{
                        
                        
                        Button{
                            cartao = true
                            pix = false
                            
                        }label: {
                            HStack{
                                Image(systemName: "creditcard.fill")
                                    .font(.system(size: 36))
                                    .foregroundStyle(Color.button)
                                Text("Cartão")
                                    .font(.custom("helvetica-regular", size: 16))
                                    .foregroundStyle(Color.fundodeTelas)
                                Spacer()
                                Circle()
                                    .fill(cartao ? Color.blue : Color.card)
                                    .overlay(Circle().stroke(Color.white, lineWidth: 4))
                                    .cornerRadius(50)
                                    .frame(width: 20, height: 20)
                                
                                
                            }
                            
                        }
                        .padding()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .background(Color.card)
                        .cornerRadius(10)
                        
                    
                        
                    Button{
                        cartao = false
                        pix = true
                        
                    }label: {
                        HStack{
                            Image("IconPix")
                                .frame(width: 36, height: 36)
                                .foregroundStyle(Color.button)
                                .padding(.horizontal,10)
                            Text("Pix")
                                .font(.custom("helvetica-regular", size: 16))
                                .foregroundStyle(Color.fundodeTelas)
                                
                                
                            Spacer()
                            Circle()
                                .fill(pix ? Color.blue : Color.card)
                                .overlay(Circle().stroke(Color.white, lineWidth: 4))
                                .cornerRadius(50)
                                .frame(width: 20, height: 20)
                               
                            
                        }
                        
                    }
                    .padding()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .background(Color.card)
                    .cornerRadius(10)
                    .padding(.top, 10)
                    }
                    Spacer()
                    
                    NavigationLink{
                        ComfirmacaoPagamento()
                    }label: {
                        ZStack {
                            Text("Confirmar Pagamento")
                                .font(Font.custom("jost-regular", size: 20))
                                .foregroundColor(Color("FundodeTelasColor"))
                                .frame(maxWidth: .infinity, minHeight: 44)

                            HStack {
                                Image("beijaflorBranco")
                                    .padding(.leading, 20)
                                Spacer()
                            }
                        }
                        .background(Color("ButtonColor"))
                        .cornerRadius(50)
                    }

                    
                    Spacer()
                }
                .padding(.horizontal, 54)
            }
        }
    }
}

#Preview {
    let viewModel = SchedulingViewModel()
    
    Comfirmacao(QuantidadeTelas: 3, tela: 2)
        .environment(viewModel)
}
