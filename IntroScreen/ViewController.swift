//
//  ViewController.swift
//  IntroScreen
//
//  Created by Victor Brigido on 29/07/24.
//

import Foundation
import UIKit

class ViewController: UIViewController {
    private var contentView = IntroScreenSwiftView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view = contentView
        setConstraints()
        contentView.delegate = self
    }
    
    private func setConstraints() {
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        contentView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        contentView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }

}

extension ViewController: IntroScreenSwiftDelegate {
    func delegateAction() {
        print("button tapped")
        self.navigationController?.pushViewController(CompletedViewController(), animated: true)
    }
}

