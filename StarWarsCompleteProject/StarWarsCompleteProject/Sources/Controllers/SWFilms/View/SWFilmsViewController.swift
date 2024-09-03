//
//  SWFilmsViewController.swift
//  StarWarsCompleteProject
//
//  Created by Rogerio Martins Barreira on 03/09/24.
//

import UIKit

class SWFilmsViewController: UIViewController {
    
    lazy var viewSWFilms: SWFilmsView = {
        let view = SWFilmsView()
        return view
    }()
    
    override func loadView() {
        super.loadView()
        self.view = viewSWFilms
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Films"
    }
}
