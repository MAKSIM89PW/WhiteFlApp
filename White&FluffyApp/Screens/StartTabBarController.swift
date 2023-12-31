//
//  StartTabBarController.swift
//  White&FluffyApp
//
//  Created by Максим Нурутдинов on 13.06.2023.
//

import UIKit

class StartTabBarController: UITabBarController {
   
    private let navBar = UINavigationBar()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setTabBarAppearance()
        generateTabBar()
    }
    
    private func generateTabBar() { 
        viewControllers = [
            createNavController(viewController: MainPhotoViewController(), title: "", imageName: #imageLiteral(resourceName: "search")),
            createNavController(viewController: FavoriteViewController(), title: "Favorite photos", imageName: #imageLiteral(resourceName: "favorite"))
        ]
        
        self.viewControllers?.forEach{ controller in
            controller.tabBarItem.selectedImage = #imageLiteral(resourceName: "circle")
        }
    }
    
    private func createNavController(viewController: UIViewController, title: String, imageName: UIImage) -> UIViewController {
        let navController = UINavigationController(rootViewController: viewController)
        navController.navigationBar.prefersLargeTitles = false
        viewController.navigationItem.title = title
        navController.view.backgroundColor = .whiteCustom
        navController.tabBarItem.image = imageName
        return navController
    }
    
    private func generateVC(viewController: UIViewController, title: String, image: UIImage?) -> UIViewController {
        viewController.tabBarItem.title = title
        viewController.tabBarItem.image = image
        return viewController
    }
    
    private func setTabBarAppearance() {
        
        if #available(iOS 15, *) {
            let tabBarAppearance = UITabBarAppearance()
            tabBarAppearance.backgroundColor = .whiteCustom
            tabBarAppearance.stackedLayoutAppearance.selected.titleTextAttributes = [.foregroundColor: UIColor.red]
            tabBarAppearance.stackedLayoutAppearance.normal.titleTextAttributes = [.foregroundColor: UIColor.black]
            tabBarAppearance.stackedLayoutAppearance.normal.iconColor = UIColor.blueCustom
            tabBarAppearance.stackedLayoutAppearance.selected.iconColor = UIColor.blueCustom
            tabBar.standardAppearance = tabBarAppearance
            tabBar.scrollEdgeAppearance = tabBarAppearance
        }
        
    }
}


