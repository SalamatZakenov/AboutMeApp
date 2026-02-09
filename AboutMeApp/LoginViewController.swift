//
//  LoginViewController.swift
//  AboutMeApp
//
//  Created by Salamat Zakenov on 08.02.2026.
//

import UIKit

final class LoginViewController: UIViewController {

    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    
    let user = "admin"
    let password = "1234"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        
        view.endEditing(true)
    }
       
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let settingsVC = segue.destination as? WelcomeViewController
        settingsVC?.userValue = userNameTextField.text
    }

    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTextField.text == user, passwordTextField.text == password else {
            
            showErrorAlert()
            return false
        }
        return true 
    }
    

    func showErrorAlert() {
        let alert = UIAlertController(title: "Ошибка", message: "Неверный логин или пароль", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        self.present(alert, animated: true)
    }
    
    
    func showForgotUser() {
        let alert = UIAlertController(title: "Oops!", message: "Your name is admin", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        self.present(alert, animated: true)
    }
    
    func showForgotPassword() {
        let alert = UIAlertController(title: "Oops!", message: "Your password id password", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        self.present(alert, animated: true)
    }
    
    
    @IBAction func buttonForgotUserTapped(_ sender: UIButton) {
        showForgotUser()
    }
    @IBAction func buttonForgotPasswordTapped(_ sender: UIButton) {
        showForgotPassword()
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }

}
