//
//  ViewController.swift
//  SeanAllenYoutube
//
//  Created by hamid on 17.03.25.
//

import UIKit

class ViewController: UIViewController {

     var loginButton :UIButton = {
        let button = UIButton(type: .system)
         button.backgroundColor = .systemBlue
         button.layer.cornerRadius = 5
         button.setTitle("hamit", for: .normal)
         button.setTitleColor(.black, for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        view.backgroundColor = .systemRed
        buttonconfigure()
    }

    
    func buttonconfigure(){
        view.addSubview(loginButton)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            loginButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loginButton.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            loginButton.widthAnchor.constraint(equalToConstant: 150),
            loginButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }

}

#Preview{
    ViewController()
}
