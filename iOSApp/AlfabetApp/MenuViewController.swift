//
//  MenuViewController.swift
//  AlfabetApp
//
//  Created by Jan Vrzal on 20.04.17.
//  Copyright © 2017 Jan Vrzal. All rights reserved.
//

import UIKit

class MenuViewController: UIViewController {
    
    var startButton: UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: 40, y: 500, width: 326, height: 72)
        button.backgroundColor = .white
        button.setTitle("Start", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(startPressed), for: .touchUpInside)
        return button
    }()
    
    var resultButton: UIButton = {
        let button = UIButton()
        button.frame = CGRect(x: 40, y: 600, width: 326, height: 72)
        button.backgroundColor = .white
        button.setTitle("Results", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector(resultPressed), for: .touchUpInside)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setView()
    }
    
    func setView()
    {
        view.addSubview(startButton)
        view.addSubview(resultButton)
    }
    
    func startPressed()
    {
        
    }
    
    func resultPressed()
    {
        
    }
}

