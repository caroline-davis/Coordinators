//
//  BuyCoordinator.swift
//  Coordinator
//
//  Created by Caroline Davis on 12/3/21.
//

import Foundation
import UIKit

class BuyCoordinator: Coordinator {
    // needs the weak to avoid the retain cycle
    weak var parentCoordinator: MainCoordinator?
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = BuyViewController.instantiate()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
        
    }
    
//    func didFinishBuying() {
//        parentCoordinator?.childDidFinish(self)
//
//    }
    
    
    
}
