//
//  ViewController.swift
//  WorkShopSample
//
//  Created by Ankush Kushwaha on 9/26/18.
//  Copyright © 2018 Ankush Kushwaha. All rights reserved.
//

// sudo apollo-codegen introspect-schema http://api.catalysis-hub.org/graphql --output schema.json

//   https://github.com/APIs-guru/graphql-apis
//    https://react-relay-pokemon.now.sh/#/

//https://graphql-pokemon.now.sh/?query=%7B%0A%20%20pokemon(name%3A%20%22Pikachu%22)%20%7B%0A%20%20%20%20name%0A%20%20%20%20id%0A%20%20%20%20number%0A%20%20%20%20name%0A%20%20%20%20attacks%20%7B%0A%20%20%20%20%20%20special%20%7B%0A%20%20%20%20%20%20%20%20name%0A%20%20%20%20%20%20%20%20type%0A%20%20%20%20%20%20%20%20damage%0A%20%20%20%20%20%20%7D%0A%20%20%20%20%7D%0A%20%20%20%20evolutions%20%7B%0A%20%20%20%20%20%20id%0A%20%20%20%20%20%20number%0A%20%20%20%20%20%20name%0A%20%20%20%20%20%20weight%20%7B%0A%20%20%20%20%20%20%20%20minimum%0A%20%20%20%20%20%20%20%20maximum%0A%20%20%20%20%20%20%7D%0A%20%20%20%20%20%20attacks%20%7B%0A%20%20%20%20%20%20%20%20fast%20%7B%0A%20%20%20%20%20%20%20%20%20%20name%0A%20%20%20%20%20%20%20%20%20%20type%0A%20%20%20%20%20%20%20%20%20%20damage%0A%20%20%20%20%20%20%20%20%7D%0A%20%20%20%20%20%20%7D%0A%20%20%20%20%7D%0A%20%20%7D%0A%7D
import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        loadDetails()

    }

    func loadDetails() {

        let request = GraphQLRequest()
        request.pokemonDetails(name: "Pikachu") { (result, error) in

            if error != nil {
                print(error ?? "")

            } else {

//                print(result)
                print(result?.data?.pokemon?.id)
                print(result?.data?.pokemon?.name)
                print(result?.data?.pokemon?.number)

            }
        }
    }

}

