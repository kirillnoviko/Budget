//
//  BudgetCoordinator.swift
//  BudgetProject
//
//  Created by User on 19.05.24.
//
import UIKit

class BudgetCoordinator: Coordinator {
    
    
   
    override func start() {
        let vc = ViewController()
        vc.view.backgroundColor = .blue
        navigationController?.pushViewController(vc, animated: true)
    }
    
    override func finish() {
        print("OnboardingCoordinator finish")
        
    }
    
}
