//
//  MenuViewController.swift
//  CouteauSuisse
//
//  Created by Leo Marliere on 19/02/2024.
//

import UIKit

protocol MenuViewControllerProtocol {
    func displayFeaturesList(features : [String])
}

class MenuViewController: UIViewController {
    
    // MARK: Properties
    private let screenTile = "Home Page"
    var interactor: MenuInteractorProtocol?
    
    // MARK: UI Component
    @IBOutlet var stackView: UIStackView!
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var button: UIButton!
    
    // MARK: LifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        title = screenTile
        setUpUIComponent()

        //interactor?.getFeatureNames()
    }
    
    private func setUpUIComponent() {
        imageView.image = UIImage(named: "couteau-suisse")
        button.setTitle("Notes", for: .normal)
        button.addTarget(self, action: #selector(buttonTapped(_:)), for: .touchUpInside)
    }
}

extension MenuViewController: MenuViewControllerProtocol {
    
    // MARK: Protocol Implementation
    func displayFeaturesList(features : [String]) {
        // TODO: Display list of button with all the feature
    }
    
    // MARK: Actions
    @objc func buttonTapped(_ sender: UIButton) {
        switch sender.currentTitle {
        case "Notes":
            let noteVC = NotesViewController()
            navigationController?.pushViewController(noteVC, animated: true)
            return
        case .none:
            return
        case .some(_):
            return
        }
    }
    
}
