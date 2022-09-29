//
//  BViewController.swift
//  ios-coordinators
//
//  Created by Wei Lun Hsu on 2022/9/28.
//

import UIKit

class BViewController: UIViewController {
    
    lazy var dismissButton: UIButton = {
        let button: UIButton = UIButton()
        button.setTitle("dismiss", for: .normal)
        button.setTitleColor(UIColor.purple, for: .normal)
        button.backgroundColor = .red
        button.addTarget(self, action: #selector(didTappedDismiss), for: .touchUpInside)
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .green
        view.addSubview(dismissButton)
        dismissButton.frame = .init(x: (view.width - 100) / 2,
                                    y: (view.height - 100) / 2,
                                    width: 100,
                                    height: 100)
    }
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @objc private func didTappedDismiss() {
        dismiss(animated: true)
    }

}
