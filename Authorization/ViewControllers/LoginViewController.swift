//
//  LoginViewController.swift
//  Authorization
//
//  Created by Artem Bazhanov on 30.03.2021.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
 
    @IBOutlet weak var logInButton: UIButton!
    
    //private let userLogin = "User"
    //private let userPassword = "Password"
    
    private let textColor = UIColor(
        red: 34.0/255.0,
        green: 167.0/255.0,
        blue: 197.0/255.0,
        alpha: 1)
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        logInButton.layer.borderWidth = 1
        logInButton.layer.cornerRadius = 15
        logInButton.layer.borderColor = textColor.cgColor
        
        loginTF.delegate = self
        loginTF.returnKeyType = .next
        passwordTF.delegate = self
        passwordTF.returnKeyType = .done
    }

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let currentUserModel = sender as? User
        //print(currentUserModel)
        //guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        //welcomeVC.userName = loginTF.text
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        //print(tabBarController.viewControllers?.count)
        for viewController in tabBarController.viewControllers! {
            print("viewController: \(viewController)")
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.userModels = User.getUsers()
                welcomeVC.userName = loginTF.text
            }
            if let aboutMeVC = viewController as? AboutMeViewController {
                aboutMeVC.currentUserModel = currentUserModel
            } else if let navigationVC = viewController as? UINavigationController {
                let hobVC = navigationVC.topViewController as! HobViewController
                hobVC.currentUserModel = currentUserModel
            }
        }
    }

    @IBAction func unwind(for segue: UIStoryboardSegue) {
        loginTF.text = ""
        passwordTF.text = ""
    }
    
    @IBAction func logInPressed() {
        let usersModels = User.getUsers()
        var currentUserModel: User
        
        guard let userLogin = loginTF.text else { return }
        guard let userPassword = passwordTF.text else { return }
        
        if checkLoginPassword() {
            for user in usersModels {
                //print("user in for = \(user)")
                print("user.login: \(user.login)")
                print("user.password: \(user.password)")
                if user.login == userLogin && user.password == userPassword {
                    currentUserModel = user
                    performSegue(withIdentifier: "segueWelcomeScreen", sender: currentUserModel)
                }
            }
        }
        showAlert(with: "Login or password is wrong", and: "Please enter valid")
        return
    }
    
    @IBAction func forgotLoginAction() {
        showAlert(with: "You login is: User", and: "")
    }
    
    @IBAction func forgotPasswordAction() {
        showAlert(with: "You password is: Password", and: "")
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if (textField == self.loginTF) {
            //textField.resignFirstResponder()
            passwordTF.becomeFirstResponder()
        } else {
            logInPressed()
            //performSegue(withIdentifier: "segueWelcomeScreen", sender: nil)
        }
        return true
    }
    
    private func checkLoginPassword() -> Bool {
        guard let inputLogin = loginTF.text, !inputLogin.isEmpty else {
            showAlert(with: "Login field is empty", and: "Please enter your Login")
            return false
        }
        guard let inputPassword = passwordTF.text, !inputPassword.isEmpty else {
            showAlert(with: "Password field is empty", and: "Please enter your Password")
            return false
        }
        
//        if loginTF.text != userLogin {
//            showAlert(with: "Login or password is wrong", and: "Please enter valid")
//            return false
//        } else if passwordTF.text != userPassword {
//            showAlert(with: "Password or password is wrong", and: "Please enter valid")
//            return false
//        }
        
        
        return true
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
