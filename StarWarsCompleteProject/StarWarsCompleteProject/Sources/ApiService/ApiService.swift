//
//  ApiService.swift
//  StarWarsCompleteProject
//
//  Created by Rogerio Martins Barreira on 03/09/24.
//

import Foundation

class ApiService {
    
    static var baseUrl: String {
        return "https://swapi.dev/api"
    }
    
    enum Endpoint {
        case people
        case planets
        case films
        case species
        case starships
        case vehicles
        
        var path: String {
            switch self {
            case .people:
                return "/people"
            case .planets:
                return "/planets"
            case .films:
                return "/films"
            case .species:
                return "/species"
            case .starships:
                return "/starships"
            case .vehicles:
                return "/starships"
            }
        }
    }
}
