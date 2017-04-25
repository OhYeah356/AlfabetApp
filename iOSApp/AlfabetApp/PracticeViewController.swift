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
    
    let alphabet: Alphabet = Alphabet.shared
    
    let letterTextField: LetterTextField = LetterTextField()
    let buttonsView: ButtonsView = ButtonsView()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        setView()
    }
    
    func setView()
    {
        view.backgroundColor = .white
        
        view.addSubview(letterTextField)
        view.addSubview(buttonsView)
        
        createConstraint()
        
        buttonsView.setTitles(title1: "Aleph", title2: "Aleph", title3: "Aleph", title4: "Aleph")
    
        buttonsView.button1.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        buttonsView.button2.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        buttonsView.button3.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
        buttonsView.button4.addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }
    
    func createConstraint()
    {
        letterTextField.snp.makeConstraints { make in
            make.top.equalTo(view).offset(100)
            make.leading.equalTo(view)
            make.trailing.equalTo(view)
        }
        
        buttonsView.snp.makeConstraints { make in
            make.top.equalTo(view.center)
            make.leading.equalTo(view)
            make.trailing.equalTo(view)
            make.bottom.equalTo(view)
        }
    }
    
    func buttonTapped()
    {
        var letters = alphabet.array
        let letter = letters[randomInt(min: 0, max: 3)]
        
        letterTextField.setTitle(title: letter)
        
        buttonsView.setTitles(
            title1: alphabet.dict[letters[randomInt(min: 0, max: 3)]]!,
            title2: alphabet.dict[letters[randomInt(min: 0, max: 3)]]!,
            title3: alphabet.dict[letters[randomInt(min: 0, max: 3)]]!,
            title4: alphabet.dict[letters[randomInt(min: 0, max: 3)]]!
        )
    }
}

