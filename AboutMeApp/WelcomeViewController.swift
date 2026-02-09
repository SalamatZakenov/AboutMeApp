//
//  WellcomeViewController.swift
//  AboutMeApp
//
//  Created by Salamat Zakenov on 09.02.2026.
//

import UIKit

class WelcomeViewController: UIViewController {


    
    @IBOutlet var userValueTF: UILabel!
    
    var userValue: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        userValueTF.text = "Welcome, \(userValue ?? "Guest")!"
    }
    
    @IBAction func logOutTapped(_ sender: UIButton) {
        dismiss(animated: true)
    }
    

}
