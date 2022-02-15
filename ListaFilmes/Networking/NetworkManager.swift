//
//  NetworkManager.swift
//  ListaFilmes
//
//  Created by Tatiana Pessoa Fernandes on 15/02/22.
//

import Foundation
import Alamofire

final class NetworkManager<T: Codable> {
    static func fetch(from urlString: String, completion: @escaping (Result<T, NetworError>) -> Void) {
        AF.request(urlString).responseDecodable(of: T.self) { (resp) in
            if resp.error != nil {
                completion(.failure(.invalidResponse))
                print(resp.error!)
                return
            }
            
            if let payload = resp.value {
                completion(.success(payload))
                return
            }
            
            completion(.failure(.nilReponse))
        }
    }
}

enum NetworError: Error {
    case invalidResponse
    case nilReponse
}



