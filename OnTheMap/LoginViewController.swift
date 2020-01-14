//
//  LoginViewController.swift
//  OnTheMap
//
//  Created by Abdulrahman Alrifae on 1/12/20.
//  Copyright © 2020 Udacity. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    var students = [StudentLocation]()
    
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        emailTextField.delegate = self
        passwordTextField.delegate = self
        passwordTextField.isSecureTextEntry = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        emailTextField.text = ""
        passwordTextField.text = ""
    }
    
    @IBAction func login(_ sender: Any) {
        OnTheMapAPI.createSession(email: emailTextField.text ?? "", password: passwordTextField.text ?? "", completion: sessionHelper(success:error:errorMessage:))
    }
    
    func sessionHelper(success: Bool, error: Error?, errorMessage: String) {
        if success {
            DispatchQueue.main.async {
                let vc = self.storyboard?.instantiateViewController(withIdentifier: "tab") as! UITabBarController
                vc.modalPresentationStyle = .fullScreen
                self.show(vc, sender: nil)
            }
        } else {
            DispatchQueue.main.async {
                self.showLoginFailure(message: errorMessage)
            }
        }
    }
    
    func showLoginFailure(message: String) {
        let alertVC = UIAlertController(title: "Login Failed", message: message, preferredStyle: .alert)
        alertVC.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        show(alertVC, sender: nil)
    }
    

}
