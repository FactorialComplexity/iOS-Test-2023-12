//
//  FruitsAndBerriesRouter.swift
//  iOS-Test
//

import UIKit

protocol FruitsAndBerriesRoutingLogic {
    
}

class FruitsAndBerriesRouter {
    weak var controller: FruitsAndBerriesViewController?
    weak var dataProvider: FruitsAndBerriesDataProvider?
}

extension FruitsAndBerriesRouter: FruitsAndBerriesRoutingLogic {
    
}

extension FruitsAndBerriesRouter {
    static func createModule(_ configuration: FruitsAndBerriesViewController.Configuration) -> FruitsAndBerriesViewController {
        let controller = UIStoryboard(name: "FruitsAndBerries", bundle: nil)
            .instantiateViewController(withIdentifier: "FruitsAndBerriesViewController") as! FruitsAndBerriesViewController
        let interactor = FruitsAndBerriesInteractor()
        let presenter = FruitsAndBerriesPresenter()
        let router = FruitsAndBerriesRouter()
        
        controller.configuration = configuration
        controller.interactor = interactor
        controller.router = router
        router.dataProvider = interactor
        interactor.presenter = presenter
        presenter.view = controller
        return controller
    }
}
