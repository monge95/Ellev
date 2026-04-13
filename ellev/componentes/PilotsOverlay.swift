//
//  PilotsOverlay.swift
//  ellev
//
//  Created by JOAO CLAUDIO DOS SANTOS SOUZA on 13/04/26.
//

import SwiftUI

struct PilotsOverlay: View {
    @Environment(\.dismiss) var dismiss
    @State private var searchText: String = ""
    
    @State private var pilots = [
        Pilot(name: "Calvin B.", flyHours: 200, helicopterModel: "Airbus H145", pilotImageName: "fotoCalvin"),
        Pilot(name: "Alex C.", flyHours: 110, helicopterModel: "Airbus ACH145", pilotImageName: "fotoAlex"),
        Pilot(name: "Elisa T. G. S. ", flyHours: 325, helicopterModel: "Bell 525 Relentless", pilotImageName: "FotoElisa"),
        Pilot(name: "Gabriela Torres P.", flyHours: 198, helicopterModel: "Bell 429", pilotImageName: "FotoGabriela")
    ]
    
    var filteredPilots: [Binding<Pilot>] {
        $pilots.filter { pilots in
            searchText.isEmpty || pilots.wrappedValue.name.localizedCaseInsensitiveContains(searchText)
        }
    }
    
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                HStack {
                    TextField("Filtrar lista de pilotos", text: $searchText)
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
                    ForEach(filteredPilots) { $pilot in
                        PilotRowList(pilot: $pilot)
                        
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

#Preview {
    PilotsOverlay()
}
