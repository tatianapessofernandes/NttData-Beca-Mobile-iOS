//
//  Cast.swift
//  ListaFilmes
//
//  Created by Tatiana Pessoa Fernandes on 15/02/22.
//

import Foundation

struct CastResponse: Codable {
    var cast: [Cast]
}

struct Cast: Codable, Identifiable {
    var id: Int?
    var name: String?
    var character: String?
    var profile_path: String?
    var profilePhoto: String {
        if let path = profile_path {
            return "http: //image.tmdb.org/t/p/original/\(path)"
        }
        return "http://picsum.photos/200/300"
    }
    
}
