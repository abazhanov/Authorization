//
//  LoginViewController.swift
//  Authorization
//
//  Created by Artem Bazhanov on 30.03.2021.
//

import UIKit

class LoginViewController: UIViewController {
    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
 
    @IBOutlet weak var logInButton: UIButton!
    
    private let userLogin = "User"
    private let userPassword = "Password"
    
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

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        self.view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        checkLoginPassword()

        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.modalPresentationStyle = .fullScreen
        welcomeVC.userName = loginTF.text
    }

    @IBAction func unwind(for segue: UIStoryboardSegue) {
        loginTF.text = ""
        passwordTF.text = ""
    }
    
    @IBAction func forgotLoginAction() {
        showAlert(with: "You login is: User", and: "")
    }
    
    @IBAction func forgotPasswordAction() {
        showAlert(with: "You password is: Password", and: "")
    }
    
    private func checkLoginPassword() {
        guard let inputLogin = loginTF.text, !inputLogin.isEmpty else {
            showAlert(with: "Login field is empty", and: "Please enter your Login")
            return
        }
        guard let inputPassword = passwordTF.text, !inputPassword.isEmpty else {
            showAlert(with: "Password field is empty", and: "Please enter your Password")
            return
        }
        
        if loginTF.text != userLogin {
            showAlert(with: "Login is wrong", and: "Please enter valid Login")
        } else if passwordTF.text != userPassword {
            showAlert(with: "Password is wrong", and: "Please enter valid Password")
        }
    }
}

extension LoginViewController {
    private func showAlert(with title: String, and message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTF.text = ""
        }
        alert.addAction(okAction)
        alert.view.tintColor = textColor
        present(alert, animated: true)
    }
}
