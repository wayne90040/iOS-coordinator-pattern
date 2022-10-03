//
//  Coordinator.swift
//  ios-coordinators
//
//  Created by Wei Lun Hsu on 2022/9/29.
//

import Foundation
import UIKit

protocol Coordinator {
    
    var childCoordinator: [Coordinator] { get set }
    
    var navigationController: UINavigationController { get set }
    
    func start()
}
