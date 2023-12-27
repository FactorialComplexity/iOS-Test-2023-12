//
//  FruitsAndBerriesInteractor.swift
//  iOS-Test
//

// Implemented by Interactor
protocol FruitsAndBerriesBusinessLogic {
    // Loads the list of the items and passes Load.Response to Presenter
    func load(request: FruitsAndBerriesModels.Load.Request)
}

class FruitsAndBerriesInteractor {
    var presenter: FruitsAndBerriesPresentationLogic?
}

extension FruitsAndBerriesInteractor: FruitsAndBerriesBusinessLogic {
    func load(request: FruitsAndBerriesModels.Load.Request) {
        presenter?.present(response: .init())
    }
}
