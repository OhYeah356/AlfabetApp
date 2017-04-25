//
//  CustomButton.swift
//  AlfabetApp
//
//  Created by Jan Vrzal on 25.04.17.
//  Copyright © 2017 Jan Vrzal. All rights reserved.
//

import UIKit


class Button: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .white
        setTitleColor(.black, for: .normal)
        layer.borderColor = UIColor.black.cgColor
        layer.borderWidth = 1
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
