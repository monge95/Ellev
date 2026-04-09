//
//  SwiftUIView.swift
//  ellev
//
//  Created by PEDRO MONGE SILVEIRA on 02/04/26.
//

import SwiftUI

struct Home: View {
    @State public var Acompanhates: Bool = false
    
    var body: some View {
        NavigationStack {
            ZStack{
                Color("FundodeTelasColor")
                    .edgesIgnoringSafeArea(.all)
                ScrollView{
                    
                 
                     Spacer(minLength: 30)
                        Image("logoPrincipal")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 227, height: 133)
                        
                     Spacer()
                        Text("Viaje com a gente e aproveite a melhor forma de se locomover por São Paulo")
                        .font(Font.custom("Helvetica", size: 16))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.tex)
                        .lineLimit(nil)
                        .fixedSize(horizontal: false, vertical: true)
                        .frame(maxWidth: 243, maxHeight: 54, alignment: .center)
                        
                     Spacer()
                        Text("Escolha seu local e data de viajem ")
                            .font(Font.custom("Helvetica-body", size: 18))
                           
                     Spacer()
                            HStack{
                        InputDateTimeView(inputType: "date")
                        InputDateTimeView(inputType: "time")
                                
                    }
                    
                            Toggle(isOn: $Acompanhates) {
                                Text("Irá acompanhado de outro passageiro?")
                                    .font(Font.custom("Helvetica", size: 14))
                            }
                            .scaleEffect(0.97)
                            .toggleStyle(SwitchToggleStyle())
                    
                    
                }
                .padding(.horizontal, 54)
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

