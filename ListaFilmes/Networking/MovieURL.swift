//
//  MovieURL.swift
//  ListaFilmes
//
//  Created by Tatiana Pessoa Fernandes on 15/02/22.
//

import Foundation

enum MovieURL: String {
    case nowPlaying = "now_playing"
    case upcoming = "upcoming"
    case popular = "popular"
    
    public var urlString: String {
        "\(MovieDownloadManager.baseURL)?api_key=\(API.key)&language=en-US&page=1"
    }
}
