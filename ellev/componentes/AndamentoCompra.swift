//
//  AndamentoCompra.swift
//  ellev
//
//  Created by PEDRO MONGE SILVEIRA on 10/04/26.
//

import SwiftUI

struct Andamento: View {
    let numero: Int
    let tamanho: CGFloat = 30
    let corFundo: Color
    let corTexto: Color
    
    var body: some View {
        Circle()
            .fill(corFundo)
            .frame(width: tamanho, height: tamanho)
        
            .overlay(
                Text("\(numero)")
                    .font(.system(size: 16))  // Fonte proporcional
                    .foregroundColor(corTexto)
                    .bold()
            )
    }
}

struct AndamentoCompra: View {
var QuantidadeTelas: Int
var tela:  Int
    var body: some View {
        ZStack {
            VStack{
                HStack(spacing: 0){
                    
                    ForEach(1...QuantidadeTelas, id: \.self){index in
                        
                        if tela >= index {
                            Andamento(numero: index, corFundo: .button, corTexto: .fundodeTelas)
                            
                            if tela == index && QuantidadeTelas != index {
                                ZStack(alignment: .leading) {
                                    
                                    if index != QuantidadeTelas {
                                        
                                        Rectangle()
                                            .frame(height: 1)
                                            .foregroundColor(.fundodeTelas)
                                    }
                                    
                                    Image("beijaflorAzul")
                                    Rectangle()
                                        .frame(width: 10,height: 1)
                                        .foregroundColor(.button)
                                }
                                
                            }
                            if index != tela {
                                
                                Rectangle()
                                    .frame(height: 1)
                                    .foregroundColor(.button)
                            }
                            
                            
                        }else{
                            Andamento(numero: index, corFundo: .inputButton, corTexto: .button)
                            if index != QuantidadeTelas {
                                
                                Rectangle()
                                    .frame(height: 1)
                                    .foregroundColor(.inputButton)
                            }else{
                              Spacer(minLength: 30)
                            }
                            
                        }
                        
                        
                        
                        
                    }
                    
                }
              
                
         
                HStack{
                    Text("ola ")
                    Spacer(minLength: 86)
                    Text("mundo")
                    Spacer()
                    Text("bem vindo")
                }
               
            }
        }
        
    }
}

#Preview {
    AndamentoCompra(QuantidadeTelas: 3, tela: 2)
}
