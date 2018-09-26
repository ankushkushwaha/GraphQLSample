//
//  GraphQLRequest.swift
//  WorkShopSample
//
//  Created by Ankush Kushwaha on 9/26/18.
//  Copyright © 2018 Ankush Kushwaha. All rights reserved.
//

import Foundation
import Apollo

class GraphQLRequest {

    func pokemonDetails(name: String,
                        completion: @escaping (GraphQLResult<PokemonQuery.Data>?, Error?) -> Void) {


        let apolloClient = ApolloConfig.shared.apolloClient()

        let query = PokemonQuery(name: name)

        apolloClient?.fetch(query: query, cachePolicy: .fetchIgnoringCacheData, queue: DispatchQueue.main, resultHandler: { result, error in

            completion(result, error)
        })
    }
}
