//
//  FruitsAndBerriesViewController.swift
//  iOS-Test
//

import UIKit

protocol FruitsAndBerriesDisplayLogic: AnyObject {
    func display(model: FruitsAndBerriesModels.Load.ViewModel)
}

class FruitsAndBerriesViewController: UIViewController {
    var interactor: FruitsAndBerriesBusinessLogic?
    var router: FruitsAndBerriesRoutingLogic?
    
    // MARK: - Outlets
    
    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        interactor?.load(request: .init())
        
        setupUI()
    }
 
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    // MARK: - Common
    func setupUI() {
        self.navigationItem.title = "Hello world!"
    }
}

extension FruitsAndBerriesViewController: FruitsAndBerriesDisplayLogic {
    func display(model: FruitsAndBerriesModels.Load.ViewModel) {
        
    }
}
