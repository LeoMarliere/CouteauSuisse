//
//  MenuInteractor.swift
//  CouteauSuisse
//
//  Created by Leo Marliere on 19/02/2024.
//

import Foundation

protocol MenuInteractorProtocol {
    func getFeatureNames()
}


class MenuInteractor: MenuInteractorProtocol {
    
    private let featureNameList: [String] = ["Notes","Alarm","Animation"]
    var presenter: MenuPresenterProtocol?
    
    func getFeatureNames() {
        presenter?.presentFeatureList(features: featureNameList)
    }
}

