//
//  APIClient.swift
//  SwiftUI-MVC
//
//  Created by nakanishi wataru on 2022/02/10.
//

import Foundation

final class APIClient {
    func requestGet<T: Decodable>(
        urlString: String,
        queryItems: [URLQueryItem]? = nil
    ) async throws -> T {
        var urlComponents = URLComponents(string: urlString)
        urlComponents?.queryItems = queryItems
        guard let url = urlComponents?.url else {
            throw APIError.invalidUrl
        }

        let result = try await URLSession.shared.dataTask(with: <#T##URL#>, completionHandler: <#T##(Data?, URLResponse?, Error?) -> Void#>)
        )
    }
}

enum APIError: Error {
    case invalidUrl
}
