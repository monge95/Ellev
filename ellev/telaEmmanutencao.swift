//
//  telaEmmanutençao.swift
//  ellev
//
//  Created by PEDRO MONGE SILVEIRA on 15/04/26.
//

import SwiftUI

struct telaEmmanutencao: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.fundodeTelas)
                    .ignoresSafeArea(edges: .all)
                

                    VStack(alignment: .leading, spacing: 20) {
                        Spacer()
                        HStack {
                            
                            Spacer()
                            
                            VStack(spacing: 20) {
                                Image(systemName: "exclamationmark.triangle.fill")
                                    .font(.system(size: 100))
                                    .foregroundStyle(.yellow)
                                    .frame(alignment: .center)
                                
                                Text("Tela em manutenção")
                                    .font(.custom("Jost-Bold", size: 20))
                                
                                
                                Text("Esta tela está atualmente em desenvolvimento. Estamos trabalhando continuamente para melhorar sua experiência, aprimorar os recursos disponíveis e entregar uma interface mais completa, intuitiva e funcional em breve. Agradecemos sua paciência e compreensão enquanto finalizamos essa etapa do aplicativo.")
                                    .font(.custom("Jost-Regular", size: 14))
                                    .foregroundColor(.tex)
                                    .frame(maxWidth: .infinity, alignment: .center)
                            }
                            
                            Spacer()
                        }
                        
                        
                        Spacer()
                        
                        NavigationLink {
                            Home()
                        }label: {
                            ZStack {
                                Text("Voltar para home")
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
                    }
                    .padding(.horizontal, 54)
                    .padding(.vertical, 50)
                
            }
        }
        .navigationBarBackButtonHidden(true)
    }
        
}

#Preview {
    telaEmmanutencao()
}
