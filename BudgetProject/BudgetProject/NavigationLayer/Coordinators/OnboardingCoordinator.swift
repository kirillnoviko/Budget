//
//  OnboardingCoordinator.swift
//  FoodDeliveryApp
//
//  Created by Alexey Krzywicki on 29.01.2024.
//

import UIKit

class OnboardingCoordinator: Coordinator {
    
    
   
    override func start() {
        showOnboarding()
        }
    
    override func finish() {
        print("OnboardingCoordinator finish")
        
    }
    
    
}
private extension OnboardingCoordinator{
    func showOnboarding(){
        var pages = [UIViewController]()
        
        let firstVC = UIViewController()
        firstVC.view.backgroundColor = .purple
        
        let secondVC = UIViewController()
        secondVC.view.backgroundColor = .yellow
        
        let thirdVC = UIViewController()
        thirdVC.view.backgroundColor = .orange
        
        pages.append(firstVC)
        pages.append(secondVC)
        pages.append(thirdVC)
        
        let presenter = OnboardingViewPresenter(coordinator: self)
        let viewController = OnboardingViewController( pages: pages, viewOutput: presenter)
        navigationController?.pushViewController(viewController, animated: true)
    }
}


