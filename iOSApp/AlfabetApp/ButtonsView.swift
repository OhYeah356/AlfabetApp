//
//  ButtonsView.swift
//  AlfabetApp
//
//  Created by Jan Vrzal on 25.04.17.
//  Copyright © 2017 Jan Vrzal. All rights reserved.
//

import UIKit
import SnapKit

class ButtonsView: UIView {
    
    let topOffset = 15
    let leftOffset = 30
    let rightOffset = -30
    
    let height = 100
    let width = 100
    
    let button1: Button = Button()
    let button2: Button = Button()
    let button3: Button = Button()
    let button4: Button = Button()
    
    
    override init(frame: CGRect) {
        super.init(frame: CGRect.zero)
        
        addSubview(button1)
        addSubview(button2)
        addSubview(button3)
        addSubview(button4)
        
        setConstraints()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setTitles(title1: String, title2: String, title3: String, title4: String)
    {
        button1.setTitle(title1, for: .normal)
        button2.setTitle(title2, for: .normal)
        button3.setTitle(title3, for: .normal)
        button4.setTitle(title4, for: .normal)
    }
    
    private func setConstraints() {
        
        button1.snp.makeConstraints { make in
            make.top.equalTo(0).offset(topOffset)
            make.leading.equalTo(0).offset(leftOffset)
            make.height.equalTo(height)
            make.width.equalTo(width)
        }
        
        button2.snp.makeConstraints { make in
            make.top.equalTo(0).offset(topOffset)
            make.trailing.equalTo(0).offset(rightOffset)
            make.height.equalTo(height)
            make.width.equalTo(width)
        }
        
        button3.snp.makeConstraints { make in
            make.top.equalTo(button1.snp.bottom).offset(topOffset)
            make.leading.equalTo(0).offset(leftOffset)
            make.height.equalTo(height)
            make.width.equalTo(width)
        }
        
        button4.snp.makeConstraints { make in
            make.top.equalTo(button2.snp.bottom).offset(topOffset)
            make.trailing.equalTo(0).offset(rightOffset)
            make.height.equalTo(height)
            make.width.equalTo(width)
        }
    }
}
