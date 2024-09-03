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
    
    override func loadView() {
        super.loadView()
        self.view = viewSWPeople
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Peoples"
    }
}
