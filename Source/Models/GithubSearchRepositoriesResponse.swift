//
//  GithubSearchRepositoriesResponse.swift
//  SwiftUI-MVC
//
//  Created by nakanishi wataru on 2022/02/10.
//

import Foundation

struct GithubSearchRepositoriesResponse: Decodable {
    let totalCount: Int
    let incompleteResult: Bool
    let items: [GithubSearchRepositoriesItemResponse]
}

struct GithubSearchRepositoriesItemResponse: Decodable {
    /// Repository ID
    let id: Int
    /// Repository 名
    let fullName: String
    /// ユーザ情報
    let owner: GithubOwnerResponse

    enum CodingKeys: String, CodingKey {
        case id
        case fullName = "full_name"
        case owner
    }
}

struct GithubOwnerResponse: Decodable {
    /// アカウント名
    let login: String
    /// ユーザアイコンの URL
    let avatarUrl: String
    /// Repository の URL
    let url: String

    enum CodingKeys: String, CodingKey {
        case login
        case avatarUrl = "avatar_url"
        case url
    }
}
