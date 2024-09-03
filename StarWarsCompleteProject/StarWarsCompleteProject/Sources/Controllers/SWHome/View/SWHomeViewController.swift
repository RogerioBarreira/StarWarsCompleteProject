//
//  SWHomeViewController.swift
//  StarWarsCompleteProject
//
//  Created by Rogerio Martins Barreira on 03/09/24.
//

import UIKit

class SWHomeViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .systemBackground
        setupTabBar()
    }
    
    func setupTabBar() {
        
        let vcPeople = SWPeopleViewController()
        let vcPlanets = SWPlanetsViewController()
        
        let nav = UINavigationController(rootViewController: vcPeople)
        let nav2 = UINavigationController(rootViewController: vcPlanets)
        
        nav.tabBarItem = UITabBarItem(title: "People", image: UIImage(systemName: "person.fill"), tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "Planets", image: UIImage(systemName: "globe"), tag: 2)
        
        setViewControllers([nav, nav2], animated: true)
    }
}

