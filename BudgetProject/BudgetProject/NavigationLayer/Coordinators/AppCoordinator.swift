//
//  AppCoordinator.swift
//  FoodDeliveryApp
//
//  Created by Alexey Krzywicki on 29.01.2024.
//

import UIKit

class AppCoordinator: Coordinator {
   
    override func start() {
      
        showMainFlow()
    }
    
    override func finish() {
        print("AppCoordinator finish")
    }
    
}

// MARK: - Navigation methods
private extension AppCoordinator {
    func showOnboardingFlow() {
        guard let navigationController = navigationController else { return }
        let onboardingCoordinator = OnboardingCoordinator(type: .onboarding, navigationController: navigationController, finishDelegate: self)
        addChildCoordinator(onboardingCoordinator)
        onboardingCoordinator.start()
    }
    func showMainFlow(){
        guard let navigationController = navigationController else {return}
        
        let budgetNavigationController = UINavigationController()
        budgetNavigationController.tabBarItem = UITabBarItem(title: "Budget", image: UIImage.init(systemName: "swirl.circle.righthalf.filled"), tag: 0)
        let budgetCoordinator = BudgetCoordinator(type: .budget, navigationController: budgetNavigationController)
        budgetCoordinator.finishDelegate = self
        budgetCoordinator.start()
        
        
        
        let creditCalculatorNavigationController = UINavigationController()
        creditCalculatorNavigationController.tabBarItem = UITabBarItem(title: "Calculator", image: UIImage.init(systemName: "swirl.circle.righthalf.filled"), tag: 1)
        let creditCalculatorCoordinator = CreditCalculatorCoordinator(type: .creditCalculator, navigationController: creditCalculatorNavigationController)
        creditCalculatorCoordinator.finishDelegate = self
        creditCalculatorCoordinator.start()
        
        
        let aiHelperNavigationController = UINavigationController()
        aiHelperNavigationController.tabBarItem = UITabBarItem(title: "AIHelper", image: UIImage.init(systemName: "swirl.circle.righthalf.filled"), tag: 2)
        let aiHelperCoordinator = AiHelperCoordinator(type: .aiHelper, navigationController: aiHelperNavigationController)
        aiHelperCoordinator.finishDelegate = self
        aiHelperCoordinator.start()
        
        
        let settingNavigationController = UINavigationController()
        settingNavigationController.tabBarItem = UITabBarItem(title: "Setting", image: UIImage.init(systemName: "swirl.circle.righthalf.filled"), tag: 3)
        let settingCoordinator = SettingCoordinator(type: .setting, navigationController: settingNavigationController)
        settingCoordinator.finishDelegate = self
        settingCoordinator.start()
        
        addChildCoordinator(budgetCoordinator)
        addChildCoordinator(creditCalculatorCoordinator)
        addChildCoordinator(aiHelperCoordinator)
        addChildCoordinator(settingCoordinator)
         
        let tabBarControllers = [budgetNavigationController, creditCalculatorNavigationController, aiHelperNavigationController, settingNavigationController]
        let tabBarController = TabBarController(tabBarControllers: tabBarControllers)
        
        navigationController.pushViewController(tabBarController, animated: true)
    }

}
extension AppCoordinator : CoordinatorFinishDelegate {
    func coordinatorDidFinish(childCoordinatro: CoordinatorProtocol) {
        removeChildCoordinator(childCoordinatro)
        switch childCoordinatro.type{
        case .app:
            return
        default:
            navigationController?.popToRootViewController(animated: false)
        }
    }
    
}

