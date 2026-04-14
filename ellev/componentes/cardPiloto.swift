//
//  cardPiloto.swift
//  ellev
//
//  Created by PEDRO MONGE SILVEIRA on 13/04/26.
//

import SwiftUI

// Enum encapsula TUDO por piloto (abstração total)
//enum Piloto {
//    case alex, gabriela, elisa, calvin
//    
//    // Computed: nome por case (O(1))
//    var nome: String {
//        switch self {
//        case .alex: return "Alex Correia Santos"
//        case .gabriela: return "Gabriela Torres Panini"
//        case .elisa: return "Elisa Tanada G. da Silva "
//        case .calvin: return "Calvin Bastos Lima"
//        }
//    }
//    
//    var fotoURL: String {
//        switch self {
//        case .alex: return "fotoAlex"
//        case .gabriela: return "FotoGabriela"
//        case .elisa: return "FotoElisa"
//        case .calvin: return "fotoCalvin"
//        }
//    }
//    
//    var horasViagadas: String {
//        switch self {
//        case .alex: return "110 horas de voo"
//        case .gabriela: return "198 horas de voo"
//        case .elisa: return "325 horas de voo"
//        case .calvin: return "200 horas de voo"
//        }
//    }
//    
//    var modeloAeronave: String {
//        switch self {
//        case .alex: return "Habilitado para: Airbus ACH145."
//        case .gabriela: return "Habilitado para: Bell 429, Airbus H145, Robinson R44."
//        case .elisa: return "Habilitado para: Bell 525 Relentless, Bell 407, Robinson R44."
//        case .calvin: return "Habilitado para: Airbus H145, Bell 407, Robinson R44."
//        }
//    }
//    
//    var especialidade: String {
//        switch self {
//        case .alex: return "Voos longos e noturnos."
//        case .gabriela: return "Voos noturnos."
//        case .elisa: return "Voos noturnos e experiência na aeronáutica."
//        case .calvin: return "Voos noturnos e agilidade urbana."
//        }
//    }
//}

struct CardPiloto: View {
    var pilot: Pilot
    
    // Computed: puxa do enum (zero repetição)
    private var nome: String { pilot.name }
    private var fotoURL: String { pilot.pilotImageName }
    private var horasViajadas: Int { pilot.flyHours }
    private var modeloHelicoptero: String { pilot.helicopterModel }
    private var especialidadePiloto: String { pilot.specialtyPilot }
    
    var body: some View {
        VStack{
            HStack{
                Image(fotoURL)
                VStack{
                    Text(nome)
                        .font(Font.custom("helvetica-Bold", size: 14))
                        .foregroundColor(.fundodeTelas)
                        .frame(maxWidth: .infinity, alignment: .leading )
                    
                    Text("\(horasViajadas) horas de voo")
                        .font(Font.custom("helvetica", size: 12))
                        .foregroundColor(.fundodeTelas)
                        .frame(maxWidth: .infinity, alignment: .leading )
                }
                
                
                
            }
            Spacer()
            Text("Modelo de aeronave (habilitação):")
                .font(Font.custom("helvetica-Bold", size: 14))
                .foregroundStyle(Color.fundodeTelas)
                .frame(maxWidth: .infinity, alignment: .leading )
                .padding(.vertical, 7)
            Text(modeloHelicoptero)
                .font(Font.custom("helvetica", size: 12))
                .foregroundStyle(Color.fundodeTelas)
                .frame(maxWidth: .infinity, alignment: .leading )
            
            Spacer()
            
            Text("Especialidade:")
                .font(Font.custom("helvetica-Bold", size: 14))
                .foregroundStyle(Color.fundodeTelas)
                .frame(maxWidth: .infinity, alignment: .leading )
                .padding(.vertical, 5)
            Text(especialidadePiloto)
                .font(Font.custom("helvetica", size: 12))
                .foregroundStyle(Color.fundodeTelas)
                .frame(maxWidth: .infinity, alignment: .leading )
            
            
        }
        .frame(maxWidth: .infinity, maxHeight: 203, alignment: .leading)
        .padding(20)
        .background(Color.card)
        .cornerRadius(20)
        
    }
}

#Preview {
    CardPiloto(pilot: Pilot(name: "Calvin B.", flyHours: 200, helicopterModel: "Airbus H145", specialtyPilot: "Voos noturnos e agilidade urbana.", pilotImageName: "fotoCalvin"))
}
