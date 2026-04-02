//
//  teste.swift
//  ellev
//
//  Created by PEDRO MONGE SILVEIRA on 01/04/26.
//

import SwiftUI

struct Login: View {
    var body: some View {
        NavigationStack{
            ZStack {
                Color("FundodeTelasColor")
                    .edgesIgnoringSafeArea(.all)
                
                VStack() {
                    
                    Spacer()
                    Image("logoPrincipal")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 227, height: 133)
                    
                    NavigationLink(destination: Home()) {
                        Text("Entrar")
                            .font(.system(size: 20, weight: .bold, design: .default))
                            .foregroundColor(.white)
                            .padding()
                            .background(Color("FundodeTelasColor"))
                            .cornerRadius(10)
                    }
                    
                    Spacer()
                    Spacer()
                    
                    NavigationLink{
                        Home()
                    }label: {
                        Text("Entrar")
                            .font(Font.custom("helveticaNeue-regular", size: 24))
                            .frame(maxWidth: .infinity)
                            .padding(.vertical, 10)
                            .background(Color("ButtonColor"))
                            .foregroundColor(Color("FundodeTelasColor"))
                            .cornerRadius(50)
                    }
                    
                }
                .padding(54)
                
                
            }
            .navigationBarBackButtonHidden(true)
        }
    }
    
}



#Preview {
    NavigationStack {
        Login()
    }
}
