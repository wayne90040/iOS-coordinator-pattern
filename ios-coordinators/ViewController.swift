//
//  ViewController.swift
//  ios-coordinators
//
//  Created by Wei Lun Hsu on 2022/9/27.
//

import UIKit

class ViewController: UIViewController {
    
    weak var coordinator: MainCoordinator?
    
    lazy var toAButton: UIButton = {
        let button: UIButton = UIButton()
        button.setTitle("to A View", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.backgroundColor = .red
        button.addTarget(self, action: #selector(didTappedToAButton), for: .touchUpInside)
        return button
    }()
    
    lazy var toBButton: UIButton = {
        let button: UIButton = UIButton()
        button.setTitle("to B View", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.backgroundColor = .green
        button.addTarget(self, action: #selector(didTappedToBButton), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        view.addSubview(toAButton)
        toAButton.frame = .init(x: (self.view.width - 100) / 2,
                                y: (self.view.height - 100) / 2,
                                width: 100,
                                height: 100)
        view.addSubview(toBButton)
        toBButton.frame = .init(x: toAButton.left,
                                y: toAButton.botton + 10,
                                width: 100, height: 100)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @objc private func didTappedToAButton() {
        coordinator?.toA()
    }
    
    @objc private func didTappedToBButton() {
        coordinator?.toB()
    }
    
}

