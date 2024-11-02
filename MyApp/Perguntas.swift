//
//  Perguntas.swift
//  MyApp
//
//  Created by user269369 on 11/2/24.
//

import Foundation

struct Pergunta{
    var titulo: String
    var respostas: [String]
}

let perguntas: [Pergunta] = [
    Pergunta(titulo: "15 + 15", respostas: ["30","20","25"]),
    Pergunta(titulo: "10 + 15", respostas: ["25", "30", "35"]),
    Pergunta(titulo: "18 - 8", respostas: ["10", "9", "8"]),
    Pergunta(titulo: "7 - 3", respostas: ["4", "5", "3"]),
    Pergunta(titulo: "18 + 6", respostas: ["24", "21", "27"])
]
