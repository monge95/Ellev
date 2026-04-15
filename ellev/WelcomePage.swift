//
//  WelcomePage.swift
//  ellev
//
//  Created by PEDRO MONGE SILVEIRA on 02/04/26.
//
import SwiftUI

struct WelcomePage: View {
    var body: some View {
        
        NavigationStack{
        ZStack{
            Color("FundodeTelasColor")
                .edgesIgnoringSafeArea(.all)
            VStack{
                
                VStack{
                    
                    Image("logoPrincipal")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 227, height: 133)
                    
                    
                }
                .padding(.top, 135)
                
                Text("Bem vindo Ellev")
                    .font(.custom("helveticaNeue", size: 24))

                    .padding(.top, 94)
                    .foregroundStyle(Color("TexColor"))
                
                Text("No Ellev você faz sua viagem de forma mais segura, prática e confortável")
                    .font(.custom("helveticaNeue", size: 15))
                    .foregroundColor(Color("TexColor"))
                    .multilineTextAlignment(.center)
                    .lineLimit(nil)
                    .fixedSize(horizontal: false, vertical: true)
                    .padding(.horizontal, 54)
                    .padding(.top, 20)
                
                Spacer()
                
                
                
                    NavigationLink{
                        Login()
                    }label: {
                        ZStack {
                            Text("Viaje com a gente")
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
                    .padding(.top, 270)
                    .padding(.horizontal, 54)
                    .padding(.bottom, 54)
                }
                
            
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}
    

#Preview{
    WelcomePage()
}
