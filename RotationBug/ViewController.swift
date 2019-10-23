//
//  ViewController.swift
//  RotationBug
//
//  Created by Jakub Fiser on 22/10/2019.
//  Copyright © 2019 Jakub Fiser. All rights reserved.
//

import UIKit


// Screen with blue background that is fixed in AppDelegate to portrait orientation only
class ViewController: UIViewController {

    let button = UIButton()


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .blue
        prepareButton()
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        // This is a hacky solution to rotate screen back to portrait on close
        // This does not affect a rotation glitch
        if UIDevice.current.orientation != .portrait {
            let value = UIInterfaceOrientation.portrait.rawValue
            UIDevice.current.setValue(value, forKey: "orientation")
        }
    }

    func prepareButton() {
        button.setTitle("detail".uppercased(), for: .normal)
        button.addTarget(self, action: #selector(openDetail), for: .primaryActionTriggered)

        view.addSubview(button)
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addConstraints([
            NSLayoutConstraint(item: button, attribute: .centerX, relatedBy: .equal, toItem: view, attribute: .centerX, multiplier: 1.0, constant: 0),
            NSLayoutConstraint(item: button, attribute: .centerY, relatedBy: .equal, toItem: view, attribute: .centerY, multiplier: 1.0, constant: 0),
            NSLayoutConstraint(item: button, attribute: .width, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 200),
            NSLayoutConstraint(item: button, attribute: .height, relatedBy: .equal, toItem: nil, attribute: .notAnAttribute, multiplier: 1.0, constant: 60)
        ])
    }

    @objc func openDetail() {
        let controller = DetailController()
        // default modalPresentationStyle has changed on iPadOS 13
        controller.modalPresentationStyle = .fullScreen
        present(controller, animated: true)
    }
}

