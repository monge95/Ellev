//
//  schedulingViewModel.swift
//  ellev
//
//  Created by JOAO CLAUDIO DOS SANTOS SOUZA on 14/04/26.
//

import Observation
import Foundation

@Observable
class SchedulingViewModel {
    var searchText: String = ""
    var pilotSelected: Pilot = Pilot(name: "Calvin B.", flyHours: 200, helicopterModel: "Airbus H145", specialtyPilot: "Voos noturnos e agilidade urbana.", pilotImageName: "fotoCalvin")
    var acompanhantesSelecionados: [Acompanhantes] = []
    
    var vaiAcompanhado: Bool = false
    var departureLocation: String = ""
    var arrivalLocation: String = ""
    var departureDate: Date = Date()
    var departureTime: Date = Date()
    
    var pilots: [Pilot] = [
        Pilot(name: "Calvin B.", flyHours: 200, helicopterModel: "Airbus H145", specialtyPilot: "Voos noturnos e agilidade urbana.", pilotImageName: "fotoCalvin"),
        Pilot(name: "Alex C.", flyHours: 110, helicopterModel: "Airbus ACH145", specialtyPilot: "Voos longos e noturnos.", pilotImageName: "fotoAlex"),
        Pilot(name: "Elisa T. G. S. ", flyHours: 325, helicopterModel: "Bell 525 Relentless", specialtyPilot: "Voos noturnos e experiência na aeronáutica.", pilotImageName: "FotoElisa"),
        Pilot(name: "Gabriela Torres P.", flyHours: 198, helicopterModel: "Bell 429", specialtyPilot: "Voos noturnos.", pilotImageName: "FotoGabriela")
    ]
    
    
    var acompanhantes: [Acompanhantes] = []
    
    var filteredPilots: [Pilot] {
        if searchText.isEmpty {
            return pilots
        } else {
            return pilots.filter { $0.name.localizedCaseInsensitiveContains(searchText) }
        }
    }
    
    var filteredAcompanhantes: [Acompanhantes] {
        if searchText.isEmpty {
            return acompanhantes
        } else {
            return acompanhantes.filter { $0.nome.localizedCaseInsensitiveContains(searchText)}
        }
    }
    
    var dataPartidaFormatada: String {
        let formatter = DateFormatter()
        formatter.dateFormat = "dd/MM/yyyy"
        return formatter.string(from: departureDate)
    }
    
    var horaChegadaFormatada: String {
        return departureTime.formatted(date: .omitted, time: .shortened)
    }
}
