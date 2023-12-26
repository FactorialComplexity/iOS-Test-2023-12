//
//  FruitsAndBerriesPresenter.swift
//  iOS-Test
//

protocol FruitsAndBerriesPresentationLogic {
    func present(response: FruitsAndBerriesModels.Load.Response)
}

class FruitsAndBerriesPresenter {
    weak var view: FruitsAndBerriesDisplayLogic?
}

extension FruitsAndBerriesPresenter: FruitsAndBerriesPresentationLogic {
    func present(response: FruitsAndBerriesModels.Load.Response) {
        view?.display(model: .init())
    }
}
