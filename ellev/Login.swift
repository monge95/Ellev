//
//  teste.swift
//  ellev
//
//  Created by PEDRO MONGE SILVEIRA on 01/04/26.
//

import SwiftUI

struct Login: View {
    
    @State private var email: String = ""
    @State private var senha: String = ""
    
    var body: some View {
        NavigationStack{
            ZStack {
                Color("FundodeTelasColor")
                    .edgesIgnoringSafeArea(.all)
                
                
                VStack(spacing: 20) {
                    Spacer()
                    Image("logoPrincipal")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 227, height: 133)
                                     
                    
                    Text("Login")
                        .font(.custom("helveticaNeue", size: 28))
                        .foregroundColor(Color("TexColor"))
                        .padding(.top, 50)
                    
                    
                            // Campo de Email
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Email")
                            .font(.custom("helveticaNeue", size: 14))
                            .foregroundColor(Color("TexColor"))
                        
                        TextField("", text: $email, prompt: Text("\("Ex: usuario@email.com")").foregroundStyle(.inputTexButton))
                            .padding(12)
                            .background(.inputButton)
                            .cornerRadius(8)
                    }
                 
                    
                            // Campo de Senha
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Senha")
                            .font(.custom("helveticaNeue", size: 14))
                            .foregroundColor(Color("TexColor"))
                        
                        SecureField("", text: $senha, prompt: Text("Ex: Senha123!").foregroundStyle(.inputTexButton))
                            .padding(12)
                            .background(.inputButton)
                            .cornerRadius(8)
                            .font(.custom("helveticaNeue", size: 16))
                        
                        
                                Text("Esqueceu sua senha?")
                                    .font(.custom("helveticaNeue", size: 14))
                                    .foregroundColor(Color("TexColor"))
                                    .padding(.top, -5)
                    }
                   
                    
                    // Botão
                    NavigationLink{
                        Home()
                    } label:{
                        Text("Entrar")
                            .font(Font.custom("helveticaNeue-regular", size: 24))
                            .frame(maxWidth: .infinity, minHeight: 44)
                            .background(Color("ButtonColor"))
                            .foregroundColor(Color("FundodeTelasColor"))
                            .cornerRadius(50)
                    }
                    
      
                    
                    HStack{
                        Text("Não tem uma conta?")
                            .font(.custom("helveticaNeue", size: 14))
                            .foregroundColor(Color("TexColor"))
                        
                        NavigationLink(destination: SignUp()){
                            Text("Cadastre-se")
                                .font(.custom("helveticaNeue", size: 14))
                        }
                    }
                    
                    Text("Ou")
                        .font(.custom("helveticaNeue", size: 14))
                        .fontWeight(.bold)
                        .foregroundColor(Color("TexColor"))
                    
                    
                    
                    // boton apple
                    NavigationLink{
                        Home()
                    } label:{
                    
                        HStack{
                            Image(systemName: "apple.logo")
                                .foregroundColor(Color(.tex))
                            
                            Text("Continue com o Apple")
                                .font(Font.custom("helveticaNeue-regular", size: 24))
                                .frame(maxWidth: .infinity, minHeight: 44)
                                .background(Color("FundodeTelasColor"))
                                .foregroundColor(Color(.tex))
                                .cornerRadius(50)
                        }
                        .padding(.horizontal, 10)
                        .overlay(
                            RoundedRectangle(cornerRadius: 50)
                                .stroke(Color(.tex), lineWidth: 2)
                        )

                    }
                    
                }.padding(.horizontal, 54)
                
               
                
            }
            .navigationBarBackButtonHidden(true)
        }
    }
}
    
    #Preview {
            Login()
    }
    
