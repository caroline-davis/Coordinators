//
//  Coordinator.swift
//  Coordinator
//
//  Created by Caroline Davis on 9/3/21.
//

import Foundation
import UIKit

protocol Coordinator: AnyObject {
    var childCoordinators: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }
    
    func start()
}
