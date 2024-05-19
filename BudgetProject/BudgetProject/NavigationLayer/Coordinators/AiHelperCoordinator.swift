//
//  AiHelperCoordinator.swift
//  BudgetProject
//
//  Created by User on 19.05.24.
//
import UIKit

class AiHelperCoordinator: Coordinator {
    
    
   
    override func start() {
        let vc = ViewController()
        vc.view.backgroundColor = .yellow
        navigationController?.pushViewController(vc, animated: true)
    }
    
    override func finish() {
        print("OnboardingCoordinator finish")
        
    }
    
}
