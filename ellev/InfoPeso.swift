//
//  InfoPeso.swift
//  ellev
//
//  Created by PEDRO MONGE SILVEIRA on 15/04/26.
//

import SwiftUI

struct InfoPeso: View {
    @State private var peso: String = ""

    private var balanceamentoText: AttributedString {
        var attributedString = AttributedString("Para o balanceamento da aeronave, informe seu peso (kg) e das bagagens. Este dado é essencial para uma decolagem de maneira segura.")
        attributedString.font = .custom("Helvetica-Regular", size: 12)
        
        if let range = attributedString.range(of: "balanceamento da aeronave") {
            attributedString[range].font = .custom("Helvetica-Bold", size: 12)
        }
        
        return attributedString
    }
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.fundodeTelas)
                    .ignoresSafeArea(.all)
                
                VStack{
                    Spacer()
                    Image("logoPrincipal")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 227, height: 133)
                    
                    Spacer()
                    Text("Informações Essenciais")
                        .font(Font.custom("jost-regular", size: 24))
                    
                    
                    Text("Peso (em kg)")
                        .font(.custom("helvetica", size: 16))
                        .foregroundStyle(Color.tex)
                    
                    TextField("", text: $peso, prompt: Text("Ex: 68").foregroundStyle(.inputTexButton))
                        .padding(12)
                        .background(.inputButton)
                        .cornerRadius(8)
                        .font(.custom("helvetica", size: 16))
                    
                        Text(balanceamentoText)
                    
                    
                    Spacer()
                    NavigationLink{
                        Home()
                    }label: {
                        ZStack {
                            Text("Ir para home")
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
                        Spacer()
                    }
                    
                }
                .padding(.horizontal, 54)
            }
        }
        .navigationBarBackButtonHidden(false)
    }
}

#Preview {
    InfoPeso()
}
