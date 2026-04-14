

import SwiftUI

@Observable
class Acompanhantes: Identifiable {
    let id = UUID()
    var nome: String
    var cpf: String
    var idade: Int
    var peso: Double
    
    init(nome: String, cpf: String, idade: Int, peso: Double) {
        self.nome = nome
        self.cpf = cpf
        self.idade = idade
        self.peso = peso
    }
}
