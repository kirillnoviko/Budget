//
//  SettingCoordinator.swift
//  BudgetProject
//
//  Created by User on 19.05.24.
//

import UIKit

class SettingCoordinator: Coordinator {
    
    
   
    override func start() {
        let vc = ViewController()
        vc.view.backgroundColor = .orange
        navigationController?.pushViewController(vc, animated: true)
    }
    
    override func finish() {
        print("OnboardingCoordinator finish")
        
    }
    
}
