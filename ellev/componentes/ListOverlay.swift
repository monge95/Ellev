//
//  PilotsOverlay.swift
//  ellev
//
//  Created by JOAO CLAUDIO DOS SANTOS SOUZA on 13/04/26.
//

import SwiftUI

struct ListOverlay: View {
    
    @Environment(SchedulingViewModel.self) var viewModel
    @Binding var show: Bool
    let infoList: String
    
    var body: some View {
        
        @Bindable var bindableViewModel = viewModel
        
        ZStack {
            VStack(spacing: 0) {
                HStack {
                    TextField(infoList == "pilot" ? "Filtrar lista de pilotos" : "Filtrar lista de passageiros", text: $bindableViewModel.searchText)
                        .foregroundColor(.inputTexButton)
                    
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.tex)
                        .font(.system(size: 20, weight: .semibold))
                }
                .padding()
                .background(.inputButton)
                .cornerRadius(25)
                .padding(.horizontal, 16)
                .padding(.top, 20)
                .padding(.bottom, 16)
                
                VStack(spacing: 0) {
                    if infoList == "pilot" {
                        ForEach(viewModel.filteredPilots) { pilot in

                            PilotRowList(pilot: pilot)
                                .contentShape(Rectangle())
                                .onTapGesture {
                                    viewModel.pilotSelected = pilot
                                    show = false
                                }
                            
                            Divider()
                                .background(.inputButton)
                                .padding(.horizontal, 16)
                                .frame(height: 5)
                        }
                    } else if infoList == "passenger" {
                        if viewModel.acompanhantes.isEmpty {
                            
                            Spacer(minLength: 30)
                            
                            Text("Nenhum passageiro cadastrado!")
                                .font(.custom("Helvetica-Bold", size: 15))
                                .foregroundStyle(.fundodeTelas)
                            
                            Spacer(minLength: 30)
                            
                        } else {
                            ForEach(viewModel.filteredAcompanhantes) { acompanhante in
                                
                                let isSelected = viewModel.acompanhantesSelecionados.contains(where: { $0.id == acompanhante.id })
                                
                                VStack(alignment: .leading, spacing: 8) {
                                    HStack {
                                        Text(acompanhante.nome)
                                            .font(.custom("Helvetica-Bold", size: 16))
                                            .foregroundStyle(.fundodeTelas)
                                        
                                        Spacer()
                                        
                                        Button(action: {
                                            if isSelected {
                                                viewModel.acompanhantesSelecionados.removeAll(where: { $0.id == acompanhante.id })
                                            } else {
                                                viewModel.acompanhantesSelecionados.append(acompanhante)
                                            }
                                        }) {
                                            Image(systemName: isSelected ? "checkmark.square.fill" : "plus.app.fill")
                                                .font(.system(size: 15))
                                                .foregroundStyle(.fundodeTelas)
                                        }
                                    }
                                }
                                .padding(.vertical, 12)
                                .padding(.horizontal, 16)
                                
                                Divider()
                                    .background(.inputButton)
                                    .padding(.horizontal, 16)
                                    .frame(height: 5)
                            }
                        }
                    }
                    
                }
            }
        }
        .background(.card)
    }
}

//#Preview {
//    ListOverlay(viewModel: SchedulingViewModel())
//}
