//
//  FruitsAndBerriesInteractor.swift
//  iOS-Test
//

protocol FruitsAndBerriesBusinessLogic {
    func load(request: FruitsAndBerriesModels.Load.Request)
}

protocol FruitsAndBerriesDataProvider: AnyObject {
    
}

class FruitsAndBerriesInteractor {
    var presenter: FruitsAndBerriesPresentationLogic?
}

extension FruitsAndBerriesInteractor: FruitsAndBerriesBusinessLogic {
    func load(request: FruitsAndBerriesModels.Load.Request) {
        presenter?.present(response: .init())
    }
}

extension FruitsAndBerriesInteractor: FruitsAndBerriesDataProvider {
    
}
