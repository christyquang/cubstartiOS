//
//  ArticleService.swift
//  newsfeedSkeleton
//
//  Created by Christy Quang on 4/8/22.
//

import Foundation
import Combine
import SwiftUI

protocol ArticleService {
    func request(from endpoint: ArticleAPI) -> AnyPublisher<ArticleResponse, APIError>
}

struct ArticleServiceImp: ArticleService {
    
    func request(from endpoint: ArticleAPI) -> AnyPublisher<ArticleResponse, APIError> {
        
        let jsonDecoder = JSONDecoder()
        jsonDecoder.dateDecodingStrategy = .iso8601
        
        return URLSession.shared
            .dataTaskPublisher(for: endpoint.urlRequest)
            .receive(on: DispatchQueue.main)
            .mapError { _ in .unknown }
            .flatMap { data, response -> AnyPublisher<ArticleResponse, APIError> in
                
                guard let response = response as? HTTPURLResponse else {
                    return Fail(error: .unknown)
                        .eraseToAnyPublisher()
                }
                
                if (200...299).contains(response.statusCode) {
                    return Just(data)
                        .decode(type: ArticleResponse.self, decoder: jsonDecoder)
                        .mapError {_ in .decodingError}
                        .eraseToAnyPublisher()
                } else {
                    return Fail(error: .errorCode(response.statusCode))
                        .eraseToAnyPublisher()
                }
            }.eraseToAnyPublisher()
    }
}
