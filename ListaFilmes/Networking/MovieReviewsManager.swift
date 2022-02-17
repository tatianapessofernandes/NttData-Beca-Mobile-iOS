//
//  MovieReviewsManager.swift
//  ListaFilmes
//
//  Created by Tatiana Pessoa Fernandes on 15/02/22.
//

import Foundation

final class MovieReviewsManager: ObservableObject {
    @Published var reviews = [Review]()
    
    private var movie: Movie
    static var baseURL = "https://api.themoviedb.org/3/trending/movie/week"
    
    
    init(movie: Movie) {
        self.movie = movie
    }
    
    func getMovieReviews() {
        
    }
    
    private func getReviews(for movie: Movie) {
        let urlString = "\(Self.baseURL)\(movie.id ?? 100)/reviews?api_key=\(API.key)"
        NetworkManager<ReviewResponse>.fetch(from: urlString) {(result) in
            switch result {
            case .success(let response):
                self.reviews = response.results
            case .failure(let err):
                print(err)
            }
        }
    }
}
