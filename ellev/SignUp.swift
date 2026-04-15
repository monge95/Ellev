//
//  firstLogin.swift
//  ellev
//
//  Created by PEDRO MONGE SILVEIRA on 06/04/26.
//

import SwiftUI

struct SignUp: View {
    @State private var email: String = ""
    @State private var CPF: String = ""
    
    @State private var Primeirasenha: String = ""
    @State private var Confirmesenha: String = ""
    
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
                    VStack(alignment: .leading, spacing: 8) {
                        Text("CPF")
                            .font(.custom("helveticaNeue", size: 14))
                            .foregroundColor(Color("TexColor"))
                        
                        TextField("", text: $CPF, prompt: Text("\("123.456.789-00")")
                            .foregroundStyle(.inputTexButton))
                            .font(Font.custom("helveticaNeue", size: 12))
                            .padding(12)
                            .background(.inputButton)
                            .cornerRadius(8)
                    }
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Email")
                            .font(.custom("helveticaNeue", size: 14))
                            .foregroundColor(Color("TexColor"))
                        
                        TextField("", text: $email, prompt: Text("\("Ex: usuario@email.com")")
                            .foregroundStyle(.inputTexButton))
                            .font(Font.custom("helveticaNeue", size: 12))
                            .padding(12)
                            .background(.inputButton)
                            .cornerRadius(8)
                    }
                    
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Senha")
                            .font(.custom("helveticaNeue", size: 14))
                            .foregroundColor(Color("TexColor"))
                        
                        SecureField("", text: $Primeirasenha, prompt: Text("Ex: Senha123!")
                            .foregroundStyle(.inputTexButton))
                            .font(Font.custom("helveticaNeue", size: 12))
                            .padding(12)
                            .background(.inputButton)
                            .cornerRadius(8)
                            .textContentType(.newPassword)
                            .autocorrectionDisabled()
                            .textInputAutocapitalization(.never)
                          

                    }
                    
                    VStack(alignment: .leading, spacing: 8) {
                        Text("Confirmar Senha")
                            .font(.custom("helveticaNeue", size: 14))
                            .foregroundColor(Color("TexColor"))
                        
                        SecureField("", text: $Confirmesenha, prompt: Text("Confirme sua senha")
                            .foregroundStyle(.inputTexButton))
                            .font(Font.custom("helveticaNeue", size: 12))
                            .padding(12)
                            .background(.inputButton)
                            .cornerRadius(8)
                            .textContentType(.newPassword)
                            .autocorrectionDisabled()
                            .textInputAutocapitalization(.never)

                    }
                    Spacer()
                    NavigationLink{
                        InfoPeso()
                    }label: {
                        Text("Viaje com a gente")
                            .font(Font.custom("helveticaNeue-regular", size: 20))
                            .frame(maxWidth: .infinity, minHeight: 44)
                            .background(Color("ButtonColor"))
                            .foregroundColor(Color("FundodeTelasColor"))
                            .cornerRadius(50)
                    }
                    
                    Spacer()
                    
                }
                .padding(.horizontal, 54)
            }
        }
        .navigationBarBackButtonHidden(false)
    }
}
#Preview {
    SignUp()
}
