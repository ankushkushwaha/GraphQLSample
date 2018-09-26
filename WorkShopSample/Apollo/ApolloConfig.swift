//
//  ApolloConfig.swift
//  WorkShopSample
//
//  Created by Ankush Kushwaha on 9/26/18.
//  Copyright © 2018 Ankush Kushwaha. All rights reserved.
//

import Foundation
import Apollo


class ApolloConfig { /// shared always remains in ram

    static let shared = ApolloConfig()

    private var apollo: ApolloClient?

    init() {
        let graphQLEndpoint = "https://graphql-pokemon.now.sh"
        apollo = ApolloClient(url: URL(string: graphQLEndpoint)!)//swiftlint:disable:this force_unwrapping
    }

    func apolloClient() -> ApolloClient? {
        return apollo
    }
}
