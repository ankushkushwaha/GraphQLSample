//  This file was automatically generated and should not be edited.

import Apollo

public final class PokemonQuery: GraphQLQuery {
  public let operationDefinition =
    "query pokemon($name: String) {\n  pokemon: pokemon(name: $name) {\n    __typename\n    name\n    id\n    number\n    attacks {\n      __typename\n      special {\n        __typename\n        name\n        type\n        damage\n      }\n    }\n    evolutions {\n      __typename\n      id\n      number\n      name\n      weight {\n        __typename\n        minimum\n        maximum\n      }\n      attacks {\n        __typename\n        fast {\n          __typename\n          name\n          type\n          damage\n        }\n      }\n    }\n  }\n}"

  public var name: String?

  public init(name: String? = nil) {
    self.name = name
  }

  public var variables: GraphQLMap? {
    return ["name": name]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("pokemon", alias: "pokemon", arguments: ["name": GraphQLVariable("name")], type: .object(Pokemon.selections)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(pokemon: Pokemon? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "pokemon": pokemon.flatMap { (value: Pokemon) -> ResultMap in value.resultMap }])
    }

    public var pokemon: Pokemon? {
      get {
        return (resultMap["pokemon"] as? ResultMap).flatMap { Pokemon(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "pokemon")
      }
    }

    public struct Pokemon: GraphQLSelectionSet {
      public static let possibleTypes = ["Pokemon"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("name", type: .scalar(String.self)),
        GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
        GraphQLField("number", type: .scalar(String.self)),
        GraphQLField("attacks", type: .object(Attack.selections)),
        GraphQLField("evolutions", type: .list(.object(Evolution.selections))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(name: String? = nil, id: GraphQLID, number: String? = nil, attacks: Attack? = nil, evolutions: [Evolution?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "Pokemon", "name": name, "id": id, "number": number, "attacks": attacks.flatMap { (value: Attack) -> ResultMap in value.resultMap }, "evolutions": evolutions.flatMap { (value: [Evolution?]) -> [ResultMap?] in value.map { (value: Evolution?) -> ResultMap? in value.flatMap { (value: Evolution) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      /// The name of this Pokémon
      public var name: String? {
        get {
          return resultMap["name"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "name")
        }
      }

      /// The ID of an object
      public var id: GraphQLID {
        get {
          return resultMap["id"]! as! GraphQLID
        }
        set {
          resultMap.updateValue(newValue, forKey: "id")
        }
      }

      /// The identifier of this Pokémon
      public var number: String? {
        get {
          return resultMap["number"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "number")
        }
      }

      /// The attacks of this Pokémon
      public var attacks: Attack? {
        get {
          return (resultMap["attacks"] as? ResultMap).flatMap { Attack(unsafeResultMap: $0) }
        }
        set {
          resultMap.updateValue(newValue?.resultMap, forKey: "attacks")
        }
      }

      /// The evolutions of this Pokémon
      public var evolutions: [Evolution?]? {
        get {
          return (resultMap["evolutions"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Evolution?] in value.map { (value: ResultMap?) -> Evolution? in value.flatMap { (value: ResultMap) -> Evolution in Evolution(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Evolution?]) -> [ResultMap?] in value.map { (value: Evolution?) -> ResultMap? in value.flatMap { (value: Evolution) -> ResultMap in value.resultMap } } }, forKey: "evolutions")
        }
      }

      public struct Attack: GraphQLSelectionSet {
        public static let possibleTypes = ["PokemonAttack"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("special", type: .list(.object(Special.selections))),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(special: [Special?]? = nil) {
          self.init(unsafeResultMap: ["__typename": "PokemonAttack", "special": special.flatMap { (value: [Special?]) -> [ResultMap?] in value.map { (value: Special?) -> ResultMap? in value.flatMap { (value: Special) -> ResultMap in value.resultMap } } }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The special attacks of this Pokémon
        public var special: [Special?]? {
          get {
            return (resultMap["special"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Special?] in value.map { (value: ResultMap?) -> Special? in value.flatMap { (value: ResultMap) -> Special in Special(unsafeResultMap: value) } } }
          }
          set {
            resultMap.updateValue(newValue.flatMap { (value: [Special?]) -> [ResultMap?] in value.map { (value: Special?) -> ResultMap? in value.flatMap { (value: Special) -> ResultMap in value.resultMap } } }, forKey: "special")
          }
        }

        public struct Special: GraphQLSelectionSet {
          public static let possibleTypes = ["Attack"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("name", type: .scalar(String.self)),
            GraphQLField("type", type: .scalar(String.self)),
            GraphQLField("damage", type: .scalar(Int.self)),
          ]

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(name: String? = nil, type: String? = nil, damage: Int? = nil) {
            self.init(unsafeResultMap: ["__typename": "Attack", "name": name, "type": type, "damage": damage])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// The name of this Pokémon attack
          public var name: String? {
            get {
              return resultMap["name"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "name")
            }
          }

          /// The type of this Pokémon attack
          public var type: String? {
            get {
              return resultMap["type"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "type")
            }
          }

          /// The damage of this Pokémon attack
          public var damage: Int? {
            get {
              return resultMap["damage"] as? Int
            }
            set {
              resultMap.updateValue(newValue, forKey: "damage")
            }
          }
        }
      }

      public struct Evolution: GraphQLSelectionSet {
        public static let possibleTypes = ["Pokemon"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
          GraphQLField("number", type: .scalar(String.self)),
          GraphQLField("name", type: .scalar(String.self)),
          GraphQLField("weight", type: .object(Weight.selections)),
          GraphQLField("attacks", type: .object(Attack.selections)),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(id: GraphQLID, number: String? = nil, name: String? = nil, weight: Weight? = nil, attacks: Attack? = nil) {
          self.init(unsafeResultMap: ["__typename": "Pokemon", "id": id, "number": number, "name": name, "weight": weight.flatMap { (value: Weight) -> ResultMap in value.resultMap }, "attacks": attacks.flatMap { (value: Attack) -> ResultMap in value.resultMap }])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        /// The ID of an object
        public var id: GraphQLID {
          get {
            return resultMap["id"]! as! GraphQLID
          }
          set {
            resultMap.updateValue(newValue, forKey: "id")
          }
        }

        /// The identifier of this Pokémon
        public var number: String? {
          get {
            return resultMap["number"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "number")
          }
        }

        /// The name of this Pokémon
        public var name: String? {
          get {
            return resultMap["name"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "name")
          }
        }

        /// The minimum and maximum weight of this Pokémon
        public var weight: Weight? {
          get {
            return (resultMap["weight"] as? ResultMap).flatMap { Weight(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "weight")
          }
        }

        /// The attacks of this Pokémon
        public var attacks: Attack? {
          get {
            return (resultMap["attacks"] as? ResultMap).flatMap { Attack(unsafeResultMap: $0) }
          }
          set {
            resultMap.updateValue(newValue?.resultMap, forKey: "attacks")
          }
        }

        public struct Weight: GraphQLSelectionSet {
          public static let possibleTypes = ["PokemonDimension"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("minimum", type: .scalar(String.self)),
            GraphQLField("maximum", type: .scalar(String.self)),
          ]

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(minimum: String? = nil, maximum: String? = nil) {
            self.init(unsafeResultMap: ["__typename": "PokemonDimension", "minimum": minimum, "maximum": maximum])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// The minimum value of this dimension
          public var minimum: String? {
            get {
              return resultMap["minimum"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "minimum")
            }
          }

          /// The maximum value of this dimension
          public var maximum: String? {
            get {
              return resultMap["maximum"] as? String
            }
            set {
              resultMap.updateValue(newValue, forKey: "maximum")
            }
          }
        }

        public struct Attack: GraphQLSelectionSet {
          public static let possibleTypes = ["PokemonAttack"]

          public static let selections: [GraphQLSelection] = [
            GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
            GraphQLField("fast", type: .list(.object(Fast.selections))),
          ]

          public private(set) var resultMap: ResultMap

          public init(unsafeResultMap: ResultMap) {
            self.resultMap = unsafeResultMap
          }

          public init(fast: [Fast?]? = nil) {
            self.init(unsafeResultMap: ["__typename": "PokemonAttack", "fast": fast.flatMap { (value: [Fast?]) -> [ResultMap?] in value.map { (value: Fast?) -> ResultMap? in value.flatMap { (value: Fast) -> ResultMap in value.resultMap } } }])
          }

          public var __typename: String {
            get {
              return resultMap["__typename"]! as! String
            }
            set {
              resultMap.updateValue(newValue, forKey: "__typename")
            }
          }

          /// The fast attacks of this Pokémon
          public var fast: [Fast?]? {
            get {
              return (resultMap["fast"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Fast?] in value.map { (value: ResultMap?) -> Fast? in value.flatMap { (value: ResultMap) -> Fast in Fast(unsafeResultMap: value) } } }
            }
            set {
              resultMap.updateValue(newValue.flatMap { (value: [Fast?]) -> [ResultMap?] in value.map { (value: Fast?) -> ResultMap? in value.flatMap { (value: Fast) -> ResultMap in value.resultMap } } }, forKey: "fast")
            }
          }

          public struct Fast: GraphQLSelectionSet {
            public static let possibleTypes = ["Attack"]

            public static let selections: [GraphQLSelection] = [
              GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
              GraphQLField("name", type: .scalar(String.self)),
              GraphQLField("type", type: .scalar(String.self)),
              GraphQLField("damage", type: .scalar(Int.self)),
            ]

            public private(set) var resultMap: ResultMap

            public init(unsafeResultMap: ResultMap) {
              self.resultMap = unsafeResultMap
            }

            public init(name: String? = nil, type: String? = nil, damage: Int? = nil) {
              self.init(unsafeResultMap: ["__typename": "Attack", "name": name, "type": type, "damage": damage])
            }

            public var __typename: String {
              get {
                return resultMap["__typename"]! as! String
              }
              set {
                resultMap.updateValue(newValue, forKey: "__typename")
              }
            }

            /// The name of this Pokémon attack
            public var name: String? {
              get {
                return resultMap["name"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "name")
              }
            }

            /// The type of this Pokémon attack
            public var type: String? {
              get {
                return resultMap["type"] as? String
              }
              set {
                resultMap.updateValue(newValue, forKey: "type")
              }
            }

            /// The damage of this Pokémon attack
            public var damage: Int? {
              get {
                return resultMap["damage"] as? Int
              }
              set {
                resultMap.updateValue(newValue, forKey: "damage")
              }
            }
          }
        }
      }
    }
  }
}