//
//  DashboardInteractor.swift
//  ViPER
//
//  Created by Sagar Dabhi on 10/02/2022.
//

import UIKit

class DashboardInteractor: PresenterToInteractor {
    var presenter: InteractorToPresenter?
    
    func fetchData() {
        
        WebServiceHandler.shared.getWebService(wsMethod: API.all.url) { data in
            do {
                if let data = data {
                    let contests = try JSONDecoder().decode([ContestModel].self, from: ((data as NSDictionary).dataReturn()!))
                    self.presenter?.successWithData(arrContest: contests)
               }
            } catch let err {
                print("Error while converting data into model", err.localizedDescription)
                self.presenter?.errorFromApi(objErr: err)
            }
        }
    }
}

