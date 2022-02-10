//
//  GithubSearchRepositoriesAPI.swift
//  SwiftUI-MVC
//
//  Created by nakanishi wataru on 2022/02/10.
//

import Foundation
import UIKit

protocol GithubSearchRepositoriesAPIProtocol {
    func searchRepositories(query: String) async throws -> GithubSearchRepositoriesResponse
}

final class GithubSearchRepositoriesAPI: GithubSearchRepositoriesAPIProtocol {

    func searchRepositories(query: String) async throws -> GithubSearchRepositoriesResponse {
        var request = URLRequest(url: URL(string: "")!)
        

        guard var urlComponents = URLComponents(string: "https://api.github.com/search/repositories") else {
            throw NSError()
        }
        urlComponents.queryItems = [
            .init(
                name: "q",
                value: query
            )
        ]

        let result = try? await URLSession.shared.data
    }
}
