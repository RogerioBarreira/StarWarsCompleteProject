//
//  ApiManager.swift
//  StarWarsCompleteProject
//
//  Created by Rogerio Martins Barreira on 03/09/24.
//

import Foundation

enum CustomError: Error {
    case invalidURL
    case requestFailed(Error)
    case invalidResponse
    case errorStatusCode(Int)
    case invalidData
    case decodingFailed(Error)
}

class ApiManager: NSObject {
    enum Method: String {
        case get = "GET"
        case post = "POST"
    }
    
    func apiManager<T: Codable>(urlString: String, method: Method, bodyParameters: [String:Any]? = nil, expecting: T.Type, completion: @escaping(Result<T,CustomError>) -> Void) {
        
        guard let url = URL(string: urlString) else {
            completion(.failure(.invalidURL))
            return
        }
        var urlRequest = URLRequest(url: url)
        urlRequest.httpMethod = method.rawValue
        
        if let bodyParameters = bodyParameters {
            if method == .post {
                do {
                    urlRequest.httpBody = try JSONSerialization.data(withJSONObject: bodyParameters)
                    urlRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
                } catch {
                    completion(.failure(.requestFailed(error)))
                    return
                }
            }
        }
        
        let task = URLSession.shared.dataTask(with: urlRequest) { data, response, error in
            if let error = error {
                completion(.failure(.requestFailed(error)))
            }
            
            guard let response = response as? HTTPURLResponse else {
                completion(.failure(.invalidResponse))
                return
            }
            if response.statusCode == 200 {
                guard let data = data else {
                    completion(.failure(.invalidData))
                    return
                }
                do {
                    let jsonData = try JSONDecoder().decode(expecting, from: data)
                    DispatchQueue.main.async {
                        completion(.success(jsonData))
                    }
                } catch {
                    DispatchQueue.main.async {
                        completion(.failure(.decodingFailed(error)))
                    }
                }
            } else {
                completion(.failure(.errorStatusCode(response.statusCode)))
            }
        }
        task.resume()
    }
}
