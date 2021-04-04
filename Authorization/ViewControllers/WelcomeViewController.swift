//
//  WelcomeViewController.swift
//  Authorization
//
//  Created by Artem Bazhanov on 30.03.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    @IBOutlet weak var userNameLabel: UILabel!
    
    var currentUserModel: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        userNameLabel.text = "Добро пожаловать, \(currentUserModel.name)"
    }
    
    @IBAction func cancelAction() {
        dismiss(animated: true)
    }
}
