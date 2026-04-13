//
//  Piloto.swift
//  ellev
//
//  Created by JOAO CLAUDIO DOS SANTOS SOUZA on 13/04/26.
//

import Foundation

struct Pilot: Identifiable {
    let id = UUID()
    let name: String
    let flyHours: Int
    let helicopterModel: String
    let pilotImageName: String
    var isFavorite: Bool = false
}
