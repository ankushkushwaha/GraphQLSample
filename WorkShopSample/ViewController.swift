//
//  ViewController.swift
//  WorkShopSample
//
//  Created by Ankush Kushwaha on 9/26/18.
//  Copyright © 2018 Ankush Kushwaha. All rights reserved.
//

// sudo apollo-codegen introspect-schema https://graphql-pokemon.now.sh --output schema.json

//   https://github.com/APIs-guru/graphql-apis

//    https://react-relay-pokemon.now.sh/#/

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        loadDetails()

    }

    func loadDetails() {

        let request = GraphQLRequest()
        request.pokemonDetails(name: "Squirtle") { (result, error) in

            if error != nil {
                print(error ?? "")

            } else {

//                print(result)
                print(result?.data?.pokemon?.id)
                print(result?.data?.pokemon?.name)
                print(result?.data?.pokemon?.number)


                guard let evolutions = result?.data?.pokemon?.evolutions as? [PokemonQuery.Data.Pokemon.Evolution] else {
                    print("\n\n\n===== No Evolutions found \n\n\n")

                    return
                }

                print("===== \n\n\nEvolutions =====\n\n\n")
                for evolution in evolutions {

                    print(evolution.name)
                    print(evolution.name)

                    print(evolution.attacks)

                    print("\n\n\n")


                }

            }
        }
    }

}

