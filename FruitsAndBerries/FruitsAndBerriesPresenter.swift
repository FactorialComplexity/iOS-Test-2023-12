//
//  FruitsAndBerriesPresenter.swift
//  iOS-Test
//

// Implemented by View layer (ViewControllers)
protocol FruitsAndBerriesPresentationLogic {
    func present(response: FruitsAndBerriesModels.Load.Response)
}

class FruitsAndBerriesPresenter {
    weak var view: FruitsAndBerriesDisplayLogic?
}

extension FruitsAndBerriesPresenter: FruitsAndBerriesPresentationLogic {
    // Transforms Load.Response into ViewModel to be displayed by the ViewController
    func present(response: FruitsAndBerriesModels.Load.Response) {
        view?.display(model: .init())
    }
}
