//
//  OnboardingViewPresenter.swift
//  BudgetProject
//
//  Created by User on 19.05.24.
//

import UIKit


protocol OnboardingViewOutput: AnyObject {
    func onboardingFinish ()
}

class OnboardingViewPresenter : OnboardingViewOutput{
    
    
    
    //MARK: -properties
    weak var coordinator: OnboardingCoordinator!
    
    init(coordinator: OnboardingCoordinator!) {
        self.coordinator = coordinator
    }
    
    func onboardingFinish() {
        coordinator.finish()
    }
    
}



