

import SwiftUI

struct ContentView: View {
    @State public var selectedView: String
    var body: some View {
        NavigationStack{
            ZStack{
                
                
                HStack{
                    
                    if selectedView == "home"{
                        
                        
                            Image("beijaflorAzul")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 35, height: 40)
                                .padding(9)
                                .background(Color.fundodeTelas)
                                .cornerRadius(10)
                    
                        
                        Spacer()
                        NavigationLink{
                            telaEmmanutencao()
                        }label: {
                            Image(systemName: "calendar")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 35, height: 40)
                                .foregroundColor(Color.fundodeTelas)
                            
                        }
                        
                        Spacer()
                        NavigationLink{
                            telaEmmanutencao()
                        }label: {
                            Image(systemName: "person.crop.circle")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 35, height: 40)
                                .foregroundColor(Color.fundodeTelas)
                            
                        }
                    }
                    
                    
                    
                    
                    if selectedView == "calendario"{
                        
                        NavigationLink{
                            Home()
                        }label: {
                            
                            Image("beijaflorBranco")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 35, height: 40)
                        }
                        
                        Spacer()
                        
                            Image(systemName: "calendar")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 35, height: 40)
                                .foregroundColor(Color.button)
                                .padding(9)
                                .background(Color.fundodeTelas)
                                .cornerRadius(10)
                            
                     
                        
                        Spacer()
                        NavigationLink{
                            telaEmmanutencao()
                        }label: {
                            Image(systemName: "person.crop.circle")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 35, height: 40)
                                .foregroundColor(Color.fundodeTelas)
                            
                        }
                    }
                    
                    
                    
                    
                    if selectedView == "perfil"{
                        NavigationLink{
                            Home()
                        }label: {
                            Image("beijaflorBranco")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 35, height: 40)
                            
                        }
                        
                        Spacer()
                        NavigationLink{
                            telaEmmanutencao()
                        }label: {
                            Image(systemName: "calendar")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 35, height: 40)
                                .foregroundColor(Color.fundodeTelas)

                        }
                        
                        Spacer()
                     
                            Image(systemName: "person.crop.circle")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 35, height: 40)
                                .foregroundColor(Color.button)
                                .padding(9)
                                .background(Color.fundodeTelas)
                                .cornerRadius(10)
                            
                        
                    }
                    
                }
                .padding(.horizontal, 54)
                .frame(height: 90)
                .background(Color.button)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        
    }
    
}

#Preview {
    
    ContentView(selectedView: "home")
}
