//
//  Review.swift
//  ListaFilmes
//
//  Created by Tatiana Pessoa Fernandes on 15/02/22.
//

import Foundation

struct ReviewResponse: Codable {
    var results: [Review]
}

struct Review: Codable, Identifiable {
    var id: String?
    var author: String?
    var content: String?
}
