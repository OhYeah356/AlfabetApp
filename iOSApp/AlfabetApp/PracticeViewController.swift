//
//  ViewController.swift
//  AlfabetApp
//
//  Created by Jan Vrzal on 20.04.17.
//  Copyright © 2017 Jan Vrzal. All rights reserved.
//

import UIKit
import SnapKit

class PracticeViewController: UIViewController {
    
    var letterTextField: UITextField = {
        let textField = UITextField()
        textField.frame = CGRect(x: 40, y: 500, width: 326, height: 72)
        textField.font = UIFont(name: "MendelSiddurMW-Bold", size: 15)
        textField.backgroundColor = .blue
        return textField
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setView()

    }
    
    func setView()
    {
        view.backgroundColor = .white
        
        view.addSubview(letterTextField)
    }
}

