//
//  DashboardRouter.swift
//  ViPER
//
//  Created by Sagar Dabhi on 10/02/2022.
//

import UIKit

class DashboardRouter: PresenterToRouter {
   
    static func createModule(view : DashboardVC) {
      
        let presenter: ViewToPresenter & InteractorToPresenter = DashboardPresenter()
        let router: PresenterToRouter = DashboardRouter()

        let interactor = DashboardInteractor()

        view.presenter = presenter

        presenter.view = view
        presenter.router = router
        presenter.interactor = interactor
        interactor.presenter = presenter
    }
}
