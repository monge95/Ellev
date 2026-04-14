//
//  AddAcompanhantes.swift
//  ellev
//
//  Created by PEDRO MONGE SILVEIRA on 14/04/26.
//

import SwiftUI

struct AddAcompanhantes: View {
    var viewModel = SchedulingViewModel()
    @Environment(\.dismiss) private var dismiss
    
    @State private var Nome: String = ""
    @State private var Cpf: String = ""
    @State private var Idade: String = ""
    @State private var Peso: String = ""
    
    var body: some View {
        
        NavigationStack {
            ZStack{
                
                Color(.fundodeTelas)
                    .ignoresSafeArea()
                
                VStack{
                    Text("Cadastre Novos(as)")
                        .font(.custom("jost", size:25))
                        .foregroundStyle(Color.tex)
                    
                    Text("Passageiros (as)")
                        .font(.custom("jost", size: 25))
                        .foregroundStyle(Color.tex)
                    Spacer(minLength: 20)
                    
                    WarningInformationCard()
                    Spacer()
                    
                    VStack(alignment: .leading, spacing: 8){
                        
                        
                        Text("Nome:")
                            .font(.custom("helvetica", size: 16))
                            .foregroundStyle(Color.tex)
                        
                        TextField("", text: $Nome, prompt: Text("Ex: Senha123!").foregroundStyle(.inputTexButton))
                            .padding(12)
                            .background(.inputButton)
                            .cornerRadius(8)
                            .font(.custom("helvetica", size: 16))
                        
                    }
                    
                    Spacer()
                    
                    VStack(alignment: .leading, spacing: 8){
                        
                        Text("Cpf:")
                            .font(.custom("helvetica", size: 16))
                            .foregroundStyle(Color.tex)
                        
                        TextField("", text: $Cpf, prompt: Text("Ex: 765.893.227-24").foregroundStyle(.inputTexButton))
                            .padding(12)
                            .background(.inputButton)
                            .cornerRadius(8)
                            .font(.custom("helvetica", size: 16))
                        
                    }
                    Spacer()
                    
                    VStack(alignment: .leading, spacing: 8){
                        
                        Text("Idade:")
                            .font(.custom("helvetica", size: 16))
                            .foregroundStyle(Color.tex)
                        
                        TextField("", text: $Idade, prompt: Text("Ex: 64").foregroundStyle(.inputTexButton))
                            .padding(12)
                            .background(.inputButton)
                            .cornerRadius(8)
                            .font(.custom("helvetica", size: 16))
                        
                    }
                    Spacer()
                    
                    VStack(alignment: .leading, spacing: 8){
                        
                        Text("Peso (em kg):")
                            .font(.custom("helvetica", size: 16))
                            .foregroundStyle(Color.tex)
                        
                        TextField("", text: $Peso, prompt: Text("Ex: 68").foregroundStyle(.inputTexButton))
                            .padding(12)
                            .background(.inputButton)
                            .cornerRadius(8)
                            .font(.custom("helvetica", size: 16))
                        
                    }
                    
                    Spacer()
                    
                    Button{
                        let NovoAcompanhante = Acompanhantes(nome: Nome, cpf: Cpf, idade: Int(Idade) ?? 0, peso: Double(Peso) ?? 0.0)
                        viewModel.acompanhantes.append(NovoAcompanhante)
                        dismiss()
                    }label: {
                        ZStack {
                            Text("Concluir cadastro")
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
                    
                    Spacer()
                    
                }.padding(54)
                
            
            }
        }
        
        
    }
}

#Preview {
    AddAcompanhantes()
}
