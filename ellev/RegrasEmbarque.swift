//
//  RegrasEmbarque.swift
//  ellev
//
//  Created by JOAO CLAUDIO DOS SANTOS SOUZA on 15/04/26.
//

import SwiftUI

struct RegrasEmbarque: View {
    var body: some View {
        NavigationStack {
            ZStack {
                Color(.fundodeTelas)
                    .ignoresSafeArea(edges: .all)
                
                ScrollView {
                    VStack(alignment: .leading, spacing: 20) {
                        HStack {
                            
                            Spacer()
                            
                            VStack(spacing: 20) {
                                Image(systemName: "exclamationmark.triangle.fill")
                                    .font(.system(size: 100))
                                    .foregroundStyle(.yellow)
                                    .frame(alignment: .center)
                                
                                Text("Regras de Embarque")
                                    .font(.custom("Jost-Bold", size: 20))
                            }
                            
                            Spacer()
                        }
                        
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Apresentação para o voo")
                                .font(.custom("Helvetica-Bold", size: 15))
                                .foregroundStyle(.tex)
                            
                            Text("Chegue ao local de embarque 30 minutos antes do voo para check-in e briefing de segurança. Caso você chegue com menos tempo de antecedência, correrá o risco de não embarcar.")
                                .font(Font.custom("Helvetica", size: 14))
                        }
                        .padding(.top, 20)
                        
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Cartão de embarque")
                                .font(.custom("Helvetica-Bold", size: 15))
                                .foregroundStyle(.tex)
                            
                            Text("Ao confirmar seu voo, enviaremos a você seu cartão de embarque por e-mail. Você poderá acessá-lo no menu ’Agendamentos’. Será necessário apresentá-lo para embarcar.")
                                .font(Font.custom("Helvetica", size: 14))
                        }
                        
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Identificação")
                                .font(.custom("Helvetica-Bold", size: 15))
                                .foregroundStyle(.tex)
                            
                            Text("Será também necessário que apresente um documento de identificação oficial com foto.")
                                .font(Font.custom("Helvetica", size: 14))
                        }
                        
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Porte de armas e artigos perfurantes e/ou perigosos")
                                .font(.custom("Helvetica-Bold", size: 15))
                                .foregroundStyle(.tex)
                            
                            Text("Não será permitido o embarque com armas de fogo, artigos perfurantes ou qualquer produto químico ou inflamável.")
                                .font(Font.custom("Helvetica", size: 14))
                        }
                        
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Transporte de animais")
                                .font(.custom("Helvetica-Bold", size: 15))
                                .foregroundStyle(.tex)
                            
                            Text("Devido às limitações de espaço e para o bem-estar dos passageiros, não será admitido o embarque de animais de estimação.")
                                .font(Font.custom("Helvetica", size: 14))
                        }
                        
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Segurança e meteorologia")
                                .font(.custom("Helvetica-Bold", size: 15))
                                .foregroundStyle(.tex)
                            
                            Text("Para segurança de voo, poderá haver cancelamento se as condições meteorológicas não forem favoráveis como tempestade, neblina e ventania. Essas informações sempre estarão na tela inicial do aplicativo. Você será reembolsado 100% do valor se não desejar dazer uma nova reserva.")
                                .font(Font.custom("Helvetica", size: 14))
                        }
                        
                        VStack(alignment: .leading, spacing: 10) {
                            Text("Cancelamento e reembolso")
                                .font(.custom("Helvetica-Bold", size: 15))
                                .foregroundStyle(.tex)
                            
                            Text("De 12h a 3h de antecedIencia reembolso de 50%, cancelamentos inferiores a 3h de antecedIencia, não haverá reembolso.")
                                .font(Font.custom("Helvetica", size: 14))
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
        }
    }
}

#Preview {
    RegrasEmbarque()
}
