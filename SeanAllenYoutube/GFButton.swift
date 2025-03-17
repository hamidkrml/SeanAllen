//
//  GFButton.swift
//  SeanAllenYoutube
//
//  Created by hamid on 17.03.25.
//

import UIKit
///  Custom -> BUTTON
class GFButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init(bacgroundColor:UIColor,title: String){
        super.init(frame: .zero)
        self.backgroundColor = bacgroundColor
        self.setTitle(title, for: .normal)
    }
    
    private func configure(){
        layer.cornerRadius = 10
        titleLabel?.textColor = .white
        titleLabel?.font = UIFont.preferredFont(forTextStyle: .headline)
        translatesAutoresizingMaskIntoConstraints = false
    }
    
}
