//
//  WelcomeViewController.swift
//  Authorization
//
//  Created by Artem Bazhanov on 30.03.2021.
//

import UIKit

class WelcomeViewController: UIViewController {
    @IBOutlet weak var userNameLabel: UILabel!
    var userName: String!

    override func viewDidLoad() {
        super.viewDidLoad()
        guard let userNameString = userName else { return }
        userNameLabel.text = "Добро пожаловать, \(userNameString)"
    }
    
    @IBAction func cancelAction() {
        dismiss(animated: true)
    }
}
