//
//  SwiftUIView.swift
//  ellev
//
//  Created by PEDRO MONGE SILVEIRA on 13/04/26.
//

import SwiftUI

struct ListasPilotos: View {
    
    var NomeDoCondutor: String
    var body: some View {
        ZStack {
            VStack{
                HStack{
                    if NomeDoCondutor == "Calvin"{
                        
                        Image("fotoCalvin")
                            .frame(maxWidth: 46, maxHeight: 46)
                        
                        VStack{
                            Text("Calvin Bastos Lima")
                                .font(Font.custom("helveticaBold", size: 12))
                                .frame(maxWidth: .infinity, alignment: .leading )
                            
                            Text("200 horas de voo")
                                .font(Font.custom("helvetica", size: 10))
                                .frame(maxWidth: .infinity, alignment: .leading )
                            
                            Text("Airbus H145")
                                .font(Font.custom("helvetica", size: 10))
                                .frame(maxWidth: .infinity, alignment: .leading )
                        }
                      
                    }
                    
                    
                    if NomeDoCondutor == "Alex"{
                      
                        Image("fotoAlex")
                            .frame(maxWidth: 46, maxHeight: 46)
                        
                        VStack{
                            Text("Alex Correia Santos")
                                .font(Font.custom("helveticaBold", size: 12))
                                .frame(maxWidth: .infinity, alignment: .leading )
                            
                            Text("110 horas de voo")
                                .font(Font.custom("helvetica", size: 10))
                                .frame(maxWidth: .infinity, alignment: .leading )
                            
                            Text("Airbus ACH145")
                                .font(Font.custom("helvetica", size: 10))
                                .frame(maxWidth: .infinity, alignment: .leading )
                        }
                     
                    }
                    
                    if NomeDoCondutor == "Elisa"{
                      
                        Image("FotoElisa")
                            .frame(maxWidth: 46, maxHeight: 46)
                        
                        VStack{
                            Text("Elisa Tanada G. da Silva ")
                                .font(Font.custom("helveticaBold", size: 12))
                                .frame(maxWidth: .infinity, alignment: .leading )
                            
                            Text("325 horas de voo")
                                .font(Font.custom("helvetica", size: 10))
                                .frame(maxWidth: .infinity, alignment: .leading )
                            
                            Text("Bell 525 Relentless")
                                .font(Font.custom("helvetica", size: 10))
                                .frame(maxWidth: .infinity, alignment: .leading )
                        }
                      
                    }
                    
                    if NomeDoCondutor == "Gabriela"{
            
                        Image("FotoGabriela")
                            .frame(maxWidth: 46, maxHeight: 46)
                        
                        VStack{
                            Text("Gabriela Torres P.")
                                .font(Font.custom("helveticaBold", size: 12))
                                .frame(maxWidth: .infinity, alignment: .leading )
                            
                            Text("198 horas de voo")
                                .font(Font.custom("helvetica", size: 10))
                                .frame(maxWidth: .infinity, alignment: .leading )
                            
                            Text("Bell 429")
                                .font(Font.custom("helvetica", size: 10))
                                .frame(maxWidth: .infinity, alignment: .leading )
                        }
                      
                    }
                    
                    
                    
                    
                }
            }.frame(maxWidth: .infinity, alignment: .center)
                .padding(10)
            .background(Color.card)
            
        }
 
       
        
    }
}

#Preview {
    ListasPilotos(NomeDoCondutor: "Gabriela")
}
