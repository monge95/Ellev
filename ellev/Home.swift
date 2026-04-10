//
//  SwiftUIView.swift
//  ellev
//
//  Created by PEDRO MONGE SILVEIRA on 02/04/26.
//

import SwiftUI
import MapKit

struct Home: View {
    @State public var Acompanhates: Bool = false
    @State private var departureInput: String = ""
    @State private var arrivalInput: String = ""
    
    let cameraPosition: MapCameraPosition = .userLocation(fallback: .automatic)
    let locationManager = CLLocationManager()
    
    var body: some View {
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
                            InputDateTimeView(inputType: "date")
                            InputDateTimeView(inputType: "time")
                        }
                        
                        Toggle("Irá acompanhado de outro passageiro?", isOn: $Acompanhates)
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
                            
                            TextField("Buscar local de partida...", text: $departureInput)
                                .font(.custom("Helvetica", size: 14))
                                .padding(.vertical, 10)
                                .padding(.horizontal, 15)
                                .background(RoundedRectangle(cornerRadius: 56)
                                    .fill(.inputButton))
                            
                            Spacer(minLength: 10)
                            
                            Text("Chegada")
                                .font(.custom("Helvetica", size: 14))
                                .foregroundStyle(.tex)
                            
                            TextField("Buscar local de partida...", text: $arrivalInput)
                                .font(.custom("Helvetica", size: 14))
                                .padding(.vertical, 10)
                                .padding(.horizontal, 15)
                                .background(RoundedRectangle(cornerRadius: 56)
                                    .fill(.inputButton))
                        }
                        
                        Map(initialPosition: cameraPosition) {
                            
                        }
                        .frame(maxWidth: .infinity, minHeight: 300)
                        .cornerRadius(10)
                        .tint(.button)
                        .onAppear {
                            locationManager.requestWhenInUseAuthorization()
                        }
                        .mapControls {
                            MapUserLocationButton()
                            MapCompass()
                            MapPitchToggle()
                            MapScaleView()
                        }
                        
                        Spacer(minLength: 40)
                    }
                    
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
    Home()
}

