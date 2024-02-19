//
//  MenuPresenter.swift
//  CouteauSuisse
//
//  Created by Leo Marliere on 19/02/2024.
//

import Foundation

protocol MenuPresenterProtocol {
    func presentFeatureList(features : [String])
}


class MenuPresenter: MenuPresenterProtocol {
    
    var view: MenuViewController?
    
    func presentFeatureList(features : [String]) {
        view?.displayFeaturesList(features: features)
    }
}
