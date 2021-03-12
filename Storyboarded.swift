//
//  Storyboarded.swift
//  Coordinator
//
//  Created by Caroline Davis on 9/3/21.
//

import Foundation
import UIKit

protocol Storyboarded {
    static func instantiate() -> Self
}

// view controllers class must always match its storyboard Id
extension Storyboarded where Self: UIViewController {
    static func instantiate() -> Self {
        let id = String(describing: self)
        let storyboard = UIStoryboard(name: "Main", bundle: Bundle.main)
        return storyboard.instantiateViewController(identifier: id) as! Self
    }
}

