//
//  DetailController.swift
//  RotationBug
//
//  Created by Jakub Fiser on 22/10/2019.
//  Copyright © 2019 Jakub Fiser. All rights reserved.
//

import UIKit


// Screen with green background that supports all orientations
class DetailController: UIViewController {

    let button = UIButton()


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .green
        prepareButton()
    }

    func prepareButton() {
        button.setTitle("close".uppercased(), for: .normal)
        button.addTarget(self, action: #selector(close), for: .primaryActionTriggered)

        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addConstraints([
            NSLayoutConstraint(item: button, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1.0, constant: 0),
            NSLayoutConstraint(item: button, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1.0, constant: 0),
            NSLayoutConstraint(item: button, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 200),
            NSLayoutConstraint(item: button, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 60)
        ])
    }

    @objc func close() {
        dismiss(animated: true)
    }
}
