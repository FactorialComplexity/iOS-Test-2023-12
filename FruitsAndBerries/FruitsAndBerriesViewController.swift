//
//  FruitsAndBerriesViewController.swift
//  iOS-Test
//

import UIKit

protocol FruitsAndBerriesDisplayLogic: AnyObject {
    func display(model: FruitsAndBerriesModels.Load.ViewModel)
}

class FruitsAndBerriesViewController: UIViewController {
    struct Configuration {
    
    }
    
    var configuration: Configuration!
    var interactor: FruitsAndBerriesBusinessLogic?
    var router: FruitsAndBerriesRoutingLogic?
    
    // MARK: - Outlets
    
    // MARK: - Properties
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        interactor?.load(request: .init(configuration: configuration))
        
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
