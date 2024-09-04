//
//  SWPeopleViewModel.swift
//  StarWarsCompleteProject
//
//  Created by Rogerio Martins Barreira on 03/09/24.
//

import Foundation

class SWPeopleViewModel: NSObject {
    
    private let worker = Worker()
    private var swPeople: SWPeople?
    
    var namePeople: String {
        swPeople?.results?.first?.name ?? ""
    }
    
    func requestSWPeopleViewModel(completion: @escaping(Result<Bool, CustomError>) -> Void) {
        worker.workerSWPeople { [weak self] result in
            guard let self else { return }
            switch result {
            case .success(let people):
                self.swPeople = people
                completion(.success(true))
            case .failure(let failure):
                completion(.failure(failure))
            }
        }
    }
}
