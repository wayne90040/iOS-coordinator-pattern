//
//  AViewController.swift
//  ios-coordinators
//
//  Created by Wei Lun Hsu on 2022/9/28.
//

import UIKit

class AViewController: UIViewController {
    
    lazy var toBButton: UIButton = {
        let button: UIButton = UIButton()
        button.setTitle("to B View", for: .normal)
        button.setTitleColor(UIColor.black, for: .normal)
        button.backgroundColor = .red
        button.addTarget(self, action: #selector(didTappedToBButton), for: .touchUpInside)
        return button
    }()
    
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
        view.backgroundColor = .red
        view.addSubview(toBButton)
        toBButton.frame = .init(x: (view.width - 100) / 2,
                                y: (view.height - 100) / 2,
                                width: 100,
                                height: 100)
        view.addSubview(dismissButton)
        dismissButton.frame = .init(x: toBButton.left,
                                    y: toBButton.botton + 10,
                                    width: 100, height: 100)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @objc private func didTappedToBButton() {
        let bvc = BViewController()
        bvc.modalPresentationStyle = .fullScreen
        present(bvc, animated: true, completion: nil)
    }
    
    @objc private func didTappedDismiss() {
        dismiss(animated: true)
    }

}
