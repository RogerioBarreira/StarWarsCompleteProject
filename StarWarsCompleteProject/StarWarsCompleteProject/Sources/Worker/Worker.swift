//
//  Worker.swift
//  StarWarsCompleteProject
//
//  Created by Rogerio Martins Barreira on 03/09/24.
//

import Foundation

class Worker {
    
    let apiManager = ApiManager()
    
    func workerSWPeople(completion: @escaping(Result<SWPeople, CustomError>) -> Void) {
        let baseUrl = ApiService.baseUrl
        let path = ApiService.Endpoint.people.path
        let url = "\(baseUrl)\(path)"
        apiManager.apiManager(urlString: url, method: .get, expecting: SWPeople.self) { result in
            print(url)
            switch result {
            case .success(let people):
                completion(.success(people))
            case .failure(let failure):
                completion(.failure(failure))
            }
        }
    }
    
    func workerSWPlanet(completion: @escaping(Result<SWPlanets, CustomError>) -> Void) {
        let baseUrl = ApiService.baseUrl
        let path = ApiService.Endpoint.planets.path
        let url = "\(baseUrl)\(path)"
        apiManager.apiManager(urlString: url, method: .get, expecting: SWPlanets.self) { result in
            print(url)
            switch result {
            case .success(let planets):
                completion(.success(planets))
            case .failure(let failure):
                completion(.failure(failure))
            }
        }
    }
    
    func workerSWSpecies(completion: @escaping(Result<SWSpecies, CustomError>) -> Void) {
        let baseUrl = ApiService.baseUrl
        let path = ApiService.Endpoint.species.path
        let url = "\(baseUrl)\(path)"
        apiManager.apiManager(urlString: url, method: .get, expecting: SWSpecies.self) { result in
            print(url)
            switch result {
            case .success(let species):
                completion(.success(species))
            case .failure(let failure):
                completion(.failure(failure))
            }
        }
    }
    
    func workerSWFilms(completion: @escaping(Result<SWFilms, CustomError>) -> Void) {
        let baseUrl = ApiService.baseUrl
        let path = ApiService.Endpoint.films.path
        let url = "\(baseUrl)\(path)"
        apiManager.apiManager(urlString: url, method: .get, expecting: SWFilms.self) { result in
            print(url)
            switch result {
            case .success(let films):
                completion(.success(films))
            case .failure(let failure):
                completion(.failure(failure))
            }
        }
    }
    
    func workerSWVehicles(completion: @escaping(Result<SWVehicles, CustomError>) -> Void) {
        let baseUrl = ApiService.baseUrl
        let path = ApiService.Endpoint.vehicles.path
        let url = "\(baseUrl)\(path)"
        apiManager.apiManager(urlString: url, method: .get, expecting: SWVehicles.self) { result in
            print(url)
            switch result {
            case .success(let vehicles):
                completion(.success(vehicles))
            case .failure(let failure):
                completion(.failure(failure))
            }
        }
    }
    
    func workerSWStarships(completion: @escaping(Result<SWStarships, CustomError>) -> Void) {
        let baseUrl = ApiService.baseUrl
        let path = ApiService.Endpoint.starships.path
        let url = "\(baseUrl)\(path)"
        apiManager.apiManager(urlString: url, method: .get, expecting: SWStarships.self) { result in
            print(url)
            switch result {
            case .success(let starships):
                completion(.success(starships))
            case .failure(let failure):
                completion(.failure(failure))
            }
        }
    }
}
