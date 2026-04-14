//
//  Piloto.swift
//  ellev
//
//  Created by JOAO CLAUDIO DOS SANTOS SOUZA on 13/04/26.
//

import Foundation
import Observation

@Observable
class Pilot: Identifiable {
    let id = UUID()
    let name: String
    let flyHours: Int
    let helicopterModel: String
    let specialtyPilot: String
    let pilotImageName: String
    var isFavorite: Bool = false
    
    init(name: String, flyHours: Int, helicopterModel: String, specialtyPilot: String, pilotImageName: String) {
        self.name = name
        self.flyHours = flyHours
        self.helicopterModel = helicopterModel
        self.specialtyPilot = specialtyPilot
        self.pilotImageName = pilotImageName
    }
}
