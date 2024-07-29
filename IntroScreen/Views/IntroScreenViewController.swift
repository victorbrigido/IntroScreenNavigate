//
//  IntroScreenViewController.swift
//  IntroScreen
//
//  Created by Victor Brigido on 29/07/24.
//

import Foundation
import UIKit

class IntroScreenViewController: UIViewController {
    private var contentView = IntroScreenSwiftView()

    override func viewDidLoad() {
        super.viewDidLoad()
        view = contentView
        contentView.delegate = self
        
    }
    
}

extension IntroScreenViewController: IntroScreenSwiftDelegate {
    func delegateAction() {
        print("button tapped")
        self.navigationController?.pushViewController(CompletedViewController(), animated: true)
    }
}
