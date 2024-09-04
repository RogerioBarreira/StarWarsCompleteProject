//
//  SWPlanetsViewController.swift
//  StarWarsCompleteProject
//
//  Created by Rogerio Martins Barreira on 03/09/24.
//

import UIKit

class SWPlanetsViewController: UIViewController {
    
    lazy var viewSWPlanets: SWPlanetsView = {
        let view = SWPlanetsView()
        return view
    }()
    
    override func loadView() {
        super.loadView()
        self.view = viewSWPlanets
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Planets"
    }
}
