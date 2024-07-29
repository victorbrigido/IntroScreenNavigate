//
//  IntroScreenSwiftView.swift
//  IntroScreen
//
//  Created by Victor Brigido on 29/07/24.
//

import Foundation
import UIKit

class IntroScreenSwiftView: UIView {
    public weak var delegate: IntroScreenSwiftDelegate?
    
    
    private var image: UIImageView = {
        let variable = UIImageView()
        variable.image = UIImage(named: "Image") // Substitua "sua_imagem" pelo nome da sua imagem
        variable.translatesAutoresizingMaskIntoConstraints = false
        variable.contentMode = .scaleAspectFit
        return variable
    }()
    
    private var welcomeText: UILabel = {
        let variable = UILabel()
        variable.textColor = .blue
        variable.text = "Olá, seja bem vindo!"
        variable.translatesAutoresizingMaskIntoConstraints = false
        return variable
    }()
    
    private var buttonContinue: UIButton = {
        let variable = UIButton()
        variable.setTitle("Continuar", for: .normal)
        variable.backgroundColor = .blue
        variable.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
        variable.translatesAutoresizingMaskIntoConstraints = false
        return variable
    }()
    
    init(){
        super.init(frame: .zero)
        addSubview(image)
        addSubview(welcomeText)
        addSubview(buttonContinue)
        
        backgroundColor = .white
        
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc
    private func buttonAction() {
        delegate?.delegateAction()
    }
    
    private func setConstraints() {
        image.topAnchor.constraint(equalTo: self.topAnchor, constant: 24).isActive = true
        image.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 36).isActive = true
        image.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -36).isActive = true
        image.widthAnchor.constraint(equalToConstant: 100).isActive = true
        image.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        welcomeText.topAnchor.constraint(equalTo: image.bottomAnchor, constant: 24).isActive = true
        welcomeText.centerYAnchor.constraint(equalTo: self.centerYAnchor).isActive = true
        welcomeText.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        
        buttonContinue.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -24).isActive = true
        buttonContinue.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 36).isActive = true
        buttonContinue.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -36).isActive = true
    }
}
