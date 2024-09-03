//
//  SWStarshipsViewController.swift
//  StarWarsCompleteProject
//
//  Created by Rogerio Martins Barreira on 03/09/24.
//

import UIKit

class SWStarshipsViewController: UIViewController {
    
    lazy var viewSWStarchips: SWStarshipsView = {
        let view = SWStarshipsView()
        return view
    }()
    
    override func loadView() {
        super.loadView()
        self.view = viewSWStarchips
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Starships"
    }
}
