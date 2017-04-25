//
//  LetterTextField.swift
//  AlfabetApp
//
//  Created by Jan Vrzal on 25.04.17.
//  Copyright © 2017 Jan Vrzal. All rights reserved.
//

import UIKit

class LetterTextField: UITextField {
    
    override init(frame: CGRect) {
        super.init(frame: CGRect.zero)
        
        font = UIFont(name: "MendelSiddurMW-Bold", size: 200)
        textAlignment = .center
        backgroundColor = .white
        textColor = .black
        text = "\u{0061}"
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setTitle(title: String)
    {
        text = title
    }
}
