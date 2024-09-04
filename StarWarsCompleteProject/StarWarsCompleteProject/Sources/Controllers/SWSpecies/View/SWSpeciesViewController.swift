//
//  SWSpeciesViewController.swift
//  StarWarsCompleteProject
//
//  Created by Rogerio Martins Barreira on 03/09/24.
//

import UIKit

class SWSpeciesViewController: UIViewController {
    
    lazy var viewSWSpecies: SWSpeciesView = {
        let view = SWSpeciesView()
        return view
    }()
    
    override func loadView() {
        super.loadView()
        self.view = viewSWSpecies
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Species"
    }
}
