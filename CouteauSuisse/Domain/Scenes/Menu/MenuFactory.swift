//
//  MenuFactory.swift
//  CouteauSuisse
//
//  Created by Leo Marliere on 19/02/2024.
//

import UIKit

class MenuFactory {
    
    static func createMenuModule() -> MenuViewController {
        // Create components
        
        let storyboard: UIStoryboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        let view = storyboard.instantiateViewController(withIdentifier: "MenuViewController") as! MenuViewController
        let interactor = MenuInteractor()
        let presenter = MenuPresenter()
        
        // Set presenter for view
        view.interactor = interactor
        interactor.presenter = presenter
        presenter.view = view
        
        return view
    }
}
