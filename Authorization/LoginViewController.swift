//
//  LoginViewController.swift
//  Authorization
//
//  Created by Artem Bazhanov on 30.03.2021.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var logInButton: UIButton!
    
    let textColor = UIColor(
        red: 34.0/255.0,
        green: 167.0/255.0,
        blue: 197.0/255.0,
        alpha: 1)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        logInButton.layer.borderWidth = 1
        logInButton.layer.cornerRadius = 15
        logInButton.layer.borderColor = textColor.cgColor
        
    }
    

}
