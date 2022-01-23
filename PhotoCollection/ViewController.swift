//
//  ViewController.swift
//  PhotoCollection
//
//  Created by Артур Фомин on 20.01.2022.
//

import UIKit

class ViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        createInstances()
        
    }
    
    private func createInstances() {
        
        let photoVC = PhotoViewController()
        let favouriteVC = FavouriteViewController()
        
        viewControllers = [generateNavigationController(rootViewController: photoVC, title: "Photos", image: UIImage(systemName: "photo")!), generateNavigationController(rootViewController: favouriteVC, title: "Favovourite", image: UIImage(systemName: "star")!)]
     
    }
    
    private func generateNavigationController(rootViewController: UIViewController,
                                              title: String,
                                              image: UIImage) -> UIViewController {
        
        let navigationVC = UINavigationController(rootViewController: rootViewController)
        
        navigationVC.tabBarItem.title = title
        navigationVC.tabBarItem.image = image
        
        return navigationVC
    }

}

