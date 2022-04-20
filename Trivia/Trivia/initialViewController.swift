//
//  initialViewController.swift
//  Trivia
//
//  Created by Alejandro Martinez on 18/04/22.
//

import UIKit

class initialViewController: UIViewController {
        
    @IBOutlet weak var userTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        }

    @IBAction func startTrivia(_ sender: Any) {
        
        if let username = userTextField.text, !username.isEmpty{
            presentTabBarController()
        }else{
            presentNoNameAlert()
        }
        
        }
    
    private func presentNoNameAlert() {
        let alert = UIAlertController(title: "Alerta", message: "ingresa el correo", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "ok", style: .default, handler: nil))
        self.present(alert, animated: true, completion: nil)
        
    }
    
    
    private func presentTabBarController() {
        
        let tabBarController = tapBarViewController()
        tabBarController.modalPresentationStyle = .overFullScreen
        self.present(tabBarController, animated: true)
        
        
        }
    }
        
    


