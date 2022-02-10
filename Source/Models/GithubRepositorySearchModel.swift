//
//  GithubRepositorySearchModel.swift
//  SwiftUI-MVC
//
//  Created by nakanishi wataru on 2022/02/10.
//

import Combine
import Foundation

final class GithubRepositorySearchModel: ObservableObject {
    struct State {
        var repositories: [GithubSearchRepositoriesItemResponse] = []
        var totalCount: Int = 0
        var incompleteResult: Bool = false
    }

    struct Action {
        let searchRepositories = PassthroughSubject<String, Never>()
    }

    struct Dependency {
        
    }

    @Published
    private(set) var state: State

    init(
        state: State
    ) {
        self.state = state

        let action = Action()

        action.
    }
}
