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

}
