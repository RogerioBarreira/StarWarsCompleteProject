//
//  Coordinator.swift
//  StarWarsCompleteProject
//
//  Created by Rogerio Martins Barreira on 03/09/24.
//

import UIKit

class Coordinator: NSObject {
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController?) {
        if navigationController == nil {
            self.navigationController = UINavigationController()
        }
        self.navigationController = navigationController ?? UINavigationController()
    }
    
    func start() {
        let vc = SWHomeViewController()
        self.navigationController.pushViewController(vc, animated: true)
    }
}
