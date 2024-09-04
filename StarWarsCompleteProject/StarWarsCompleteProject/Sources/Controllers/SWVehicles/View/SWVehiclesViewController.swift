//
//  SWVehiclesViewController.swift
//  StarWarsCompleteProject
//
//  Created by Rogerio Martins Barreira on 03/09/24.
//

import UIKit

class SWVehiclesViewController: UIViewController {
    
    lazy var viewSWVehicles: SWVehiclesView = {
        let view = SWVehiclesView()
        return view
    }()
    
    override func loadView() {
        super.loadView()
        self.view = viewSWVehicles
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Vehicles"
    }
}
