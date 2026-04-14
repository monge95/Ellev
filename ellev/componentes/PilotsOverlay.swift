//
//  PilotsOverlay.swift
//  ellev
//
//  Created by JOAO CLAUDIO DOS SANTOS SOUZA on 13/04/26.
//

import SwiftUI

struct PilotsOverlay: View {
    
    var viewModel: SchedulingViewModel
    
    @Binding var showPilots: Bool
    
    var body: some View {
        
        @Bindable var bindableViewModel = viewModel
        
        ZStack {
            VStack(spacing: 0) {
                HStack {
                    TextField("Filtrar lista de pilotos", text: $bindableViewModel.searchText)
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
                    ForEach(viewModel.filteredPilots) { pilot in
                        PilotRowList(pilot: pilot)
                            .contentShape(Rectangle())
                            .onTapGesture {
                                viewModel.pilotSelected = pilot
                                showPilots = false
                            }
                        
                        Divider()
                            .background(.inputButton)
                            .padding(.horizontal, 16)
                            .frame(height: 5)
                    }
                    
                }
            }
        }
        .background(.card)
    }
}

//#Preview {
//    PilotsOverlay(viewModel: SchedulingViewModel())
//}
