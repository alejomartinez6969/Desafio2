//
//  tapBarViewController.swift
//  Trivia
//
//  Created by Alejandro Martinez on 19/04/22.
//

import UIKit
import SwiftUI

class tapBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
        //PRIMER TAP
        
        let firstTabTitle  = "Categories"
        let firstTapImage = UIImage(systemName: "list.dash")
        
        let firstTabViewController = CategoriesViewController(nibName: "CategoriesViewController", bundle: nil)
        firstTabViewController.title = firstTabTitle
        
        let firstTabNavigationController = UINavigationController(rootViewController: firstTabViewController)
        
        firstTabNavigationController.tabBarItem = UITabBarItem(title: firstTabTitle, image: firstTapImage, selectedImage: nil)
        
        //SEGUNDO TAP
        
        let secondViewController = randomViewController(nibName: "randomViewController", bundle:nil)
        secondViewController.title = "Random"
        
        let secondTabNavigationController = UINavigationController(rootViewController: secondViewController)
        
        secondTabNavigationController.tabBarItem = UITabBarItem(title:"random", image:  UIImage(systemName: "shuffle"), selectedImage: nil)
        
        viewControllers = [firstTabNavigationController, secondTabNavigationController]
        
       
                }
            }


    

 

}
