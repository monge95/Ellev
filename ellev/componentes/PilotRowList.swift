//
//  SwiftUIView.swift
//  ellev
//
//  Created by PEDRO MONGE SILVEIRA on 13/04/26.
//

import SwiftUI

struct PilotRowList: View {
    
    var pilot: Pilot
    
    var body: some View {
        HStack(spacing: 16) {
            Image(pilot.pilotImageName)
                .resizable()
                .scaledToFill()
                .frame(width: 46, height: 46)
                .clipShape(Circle())
            
            VStack(alignment: .leading, spacing: 8) {
                Text(pilot.name)
                    .font(.custom("Helvetica-Bold", size: 12))
                    .foregroundStyle(.fundodeTelas)
                
                Text("\(pilot.flyHours) horas de voo")
                    .font(.custom("Helvetica", size: 10))
                    .foregroundStyle(.fundodeTelas)
                
                Text(pilot.helicopterModel)
                    .font(.custom("Helvetica", size: 10))
                    .foregroundStyle(.fundodeTelas)
            }
            
            Spacer()
            
            Button(action: {
                pilot.isFavorite.toggle()
            }) {
                Image(systemName: pilot.isFavorite ? "heart.fill" : "heart")
                    .font(.system(size: 15))
                    .foregroundStyle(pilot.isFavorite ? .button : .inputButton.opacity(0.4))
            }
        }
        .padding(.vertical, 12)
        .padding(.horizontal, 16)
    }
}
