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
        let vcFilms = SWFilmsViewController()
        let vcSpecies = SWSpeciesViewController()
        let vcStarships = SWStarshipsViewController()
        let vcVehicles = SWVehiclesViewController()
        
        let nav1 = UINavigationController(rootViewController: vcPeople)
        let nav2 = UINavigationController(rootViewController: vcPlanets)
        let nav3 = UINavigationController(rootViewController: vcFilms)
        let nav4 = UINavigationController(rootViewController: vcSpecies)
        let nav5 = UINavigationController(rootViewController: vcStarships)
        let nav6 = UINavigationController(rootViewController: vcVehicles)
        
        nav1.tabBarItem = UITabBarItem(title: "People", image: UIImage(systemName: "person.fill"), tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "Planets", image: UIImage(systemName: "globe"), tag: 2)
        nav3.tabBarItem = UITabBarItem(title: "Films", image: UIImage(systemName: "tv"), tag: 3)
        nav4.tabBarItem = UITabBarItem(title: "Species", image: UIImage(systemName: "poweroutlet.type.k.fill"), tag: 4)
        nav5.tabBarItem = UITabBarItem(title: "Starships", image: UIImage(systemName: "star.fill"), tag: 5)
        nav6.tabBarItem = UITabBarItem(title: "Vehicles", image: UIImage(systemName: "car"), tag: 6)

        
        setViewControllers([nav1, nav2, nav3, nav4, nav5, nav6], animated: true)
    }
}

