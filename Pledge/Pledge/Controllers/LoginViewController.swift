//
//  LoginViewController.swift
//  Pledge
//
//  Created by Dulio Denis on 9/10/16.
//  Copyright © 2016 Dulio Denis. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var signInButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureAssets()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        introAnimation()
    }
    
    func configureAssets() {
        titleLabel.alpha = 0.0
        usernameTextField.alpha = 0.0
        passwordTextField.alpha = 0.0
        signInButton.isHidden = true
        
        // push it up initially - so then we can drop it
        self.usernameTextField.center.y += -20
        self.passwordTextField.center.y += -20
    }
    
    func animateTextFields() {
        self.usernameTextField.center.y += 20
        self.passwordTextField.center.y += 20
    }

    func fadeInAssets() {
        self.titleLabel.alpha = 1.0
        self.usernameTextField.alpha = 1.0
        self.passwordTextField.alpha = 1.0
    }
    
    func introAnimation() {
        UIView.animate(withDuration: 0.7, delay: 0, options: .curveEaseOut, animations: {
            self.fadeInAssets()
            self.animateTextFields()
            }, completion: nil)
    }
}
