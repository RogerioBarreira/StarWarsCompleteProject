//
//  SWPeopleViewController.swift
//  StarWarsCompleteProject
//
//  Created by Rogerio Martins Barreira on 03/09/24.
//

import UIKit

class SWPeopleViewController: UIViewController {
    
    lazy var viewSWPeople: SWPeopleView = {
        let view = SWPeopleView()
        return view
    }()
    
    let viewModel = SWPeopleViewModel()
    
    override func loadView() {
        super.loadView()
        self.view = viewSWPeople
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Peoples"
        setupRequest()
    }
    
    private func setupRequest() {
        viewModel.requestSWPeopleViewModel { [weak self] result in
            guard let self else { return }
            switch result {
            case .success(let success):
                
                print(success)
            case .failure(let failure):
                print(failure.localizedDescription)
            }
        }
    }
}
