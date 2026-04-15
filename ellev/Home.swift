//
//  SwiftUIView.swift
//  ellev
//
//  Created by PEDRO MONGE SILVEIRA on 02/04/26.
//

import SwiftUI

struct Home: View {
    @State private var viewModel = SchedulingViewModel()
    
    var body: some View {
        
        @Bindable var bindViewModel = viewModel
        
        NavigationStack {
            ZStack{
                Color("FundodeTelasColor")
                    .edgesIgnoringSafeArea(.all)
                
                ScrollView{
                    
                    VStack(alignment: .leading, spacing: 20) {
                        
                        HStack {
                            Spacer()
                            Image("logoPrincipal")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 227, height: 133)
                            Spacer()
                        }
                        
                        Text("Viaje com a gente e aproveite a melhor forma de se locomover por São Paulo")
                            .font(Font.custom("Helvetica-Oblique", size: 16))
                            .multilineTextAlignment(.center)
                            .foregroundColor(.tex)
                            .padding(.bottom, 20)
                            .frame(maxWidth: .infinity, alignment: .center)
                        
                        
                        Text("Escolha seu local e data de viagem ")
                            .font(Font.custom("Jost-Bold", size: 18))
                            .foregroundStyle(.button)
                        
                        HStack{
                            InputDateTimeView(inputType: "date", selectedDate: $bindViewModel.departureDate)
                            InputDateTimeView(inputType: "time", selectedDate: $bindViewModel.departureTime)
                        }
                        
                        Toggle("Irá acompanhado de outro passageiro?", isOn: $bindViewModel.vaiAcompanhado)
                            .scaleEffect(0.97)
                            .font(Font.custom("Helvetica", size: 14))
                            .tint(.button)
                        
                        VStack(alignment: .leading, spacing: 5) {
                            Text("Local")
                                .font(.custom("Helvetica-Bold", size: 16))
                                .foregroundStyle(.button)
                            
                            Text("Selecione o heliponto.")
                                .font(.custom("Helvetica", size: 14))
                        }
                        
                        VStack(alignment: .leading, spacing: 5) {
                            Text("Partida")
                                .font(.custom("Helvetica", size: 14))
                                .foregroundStyle(.tex)
                            
                            TextField("Buscar local de partida...", text: $bindViewModel.departureLocation)
                                .font(.custom("Helvetica", size: 14))
                                .padding(.vertical, 10)
                                .padding(.horizontal, 15)
                                .background(RoundedRectangle(cornerRadius: 56)
                                    .fill(.inputButton))
                            
                            Spacer(minLength: 10)
                            
                            Text("Chegada")
                                .font(.custom("Helvetica", size: 14))
                                .foregroundStyle(.tex)
                            
                            TextField("Buscar local de partida...", text: $bindViewModel.arrivalLocation)
                                .font(.custom("Helvetica", size: 14))
                                .padding(.vertical, 10)
                                .padding(.horizontal, 15)
                                .background(RoundedRectangle(cornerRadius: 56)
                                    .fill(.inputButton))
                        }
                        
                        CustomMap()
                        
                        NavigationLink {
                            if viewModel.vaiAcompanhado {
                                AgendarPilotos(QuantidadeTelas: 3)
                            } else {
                                AgendarPilotos(QuantidadeTelas: 2)
                            }
                        }label: {
                            ZStack {
                                Text("Iniciar agendamento")
                                    .font(Font.custom("helveticaNeue-regular", size: 20))
                                    .foregroundColor(Color("FundodeTelasColor"))
                                    .frame(maxWidth: .infinity, minHeight: 44)

                                HStack {
                                    Image("beijaflorBranco")
                                        .padding(.leading, 30)
                                    Spacer()
                                }
                            }
                            .background(Color("ButtonColor"))
                            .cornerRadius(50)
                        }
                        .padding(.top, 20)
                        
                        Spacer(minLength: 40)
                    }
                    .environment(viewModel)
                    
                }
                .padding(.horizontal, 54)
                .scrollIndicators(.hidden)
            }
            
            Spacer()
            ContentView(selectedView: "home")
                .frame(height: 20)
            
        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    
    let viewModel = SchedulingViewModel()
    
    Home()
        .environment(viewModel)
}

