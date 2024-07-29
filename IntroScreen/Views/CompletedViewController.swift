//
//  CompletedViewController.swift
//  IntroScreen
//
//  Created by Victor Brigido on 29/07/24.
//

import UIKit

class CompletedViewController: UIViewController {
    
    private var label: UILabel = {
        let label = UILabel()
        label.text = "Navegação Concluída"
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .center
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(label)
        setConstraints()
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        ])
    }
}

