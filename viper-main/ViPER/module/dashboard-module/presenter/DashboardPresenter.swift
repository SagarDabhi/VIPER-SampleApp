//
//  DashboardPresenter.swift
//  ViPER
//
//  Created by Sagar Dabhi on 10/02/2022.
//

import UIKit

class DashboardPresenter: InteractorToPresenter, ViewToPresenter {
    
    var view: PresenterToView?
    
    var interactor: PresenterToInteractor?
    
    var router: PresenterToRouter?
    
    func fetchdata() {
        interactor?.fetchData()
    }
    
    func successWithData(arrContest: [ContestModel]) {
        view?.successWithData(arrContest: arrContest)
    }
    
    func errorFromApi(objErr: Error) {
        view?.errorFromApi(objErr: objErr)
    }

}


