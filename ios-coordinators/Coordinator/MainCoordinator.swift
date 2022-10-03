//
//  MainCoordinator.swift
//  ios-coordinators
//
//  Created by Wei Lun Hsu on 2022/10/2.
//

import Foundation
import UIKit

class MainCoordinator: Coordinator {
    
    var childCoordinator: [Coordinator] = .init([])
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = ViewController()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func toA() {
        let vc: AViewController = .init()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func toB() {
        let vc: BViewController = .init()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func back() {
        navigationController.popViewController(animated: true)
    }
}
