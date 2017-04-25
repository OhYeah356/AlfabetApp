//
//  Global.swift
//  AlfabetApp
//
//  Created by Jan Vrzal on 25.04.17.
//  Copyright © 2017 Jan Vrzal. All rights reserved.
//
import Foundation

func randomInt(min: Int, max:Int) -> Int {
    return min + Int(arc4random_uniform(UInt32(max - min + 1)))
}
