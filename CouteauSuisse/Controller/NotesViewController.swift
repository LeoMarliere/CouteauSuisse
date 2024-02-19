//
//  ViewController.swift
//  CouteauSuisse
//
//  Created by Leo Marliere on 19/02/2024.
//

import UIKit

class NotesViewController: UIViewController {

    private let screenTtile = "Note"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = screenTtile
        self.setupNavigationBarItem()
    }
    
    
    private func setupNavigationBarItem() {
        let add = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addTapped))
        navigationItem.rightBarButtonItems = [add]
    }
    
    @objc func addTapped() {

    }
    
}

