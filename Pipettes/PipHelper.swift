//
//  PipHelper.swift
//  Pipettes
//
//  Created by Marsel Tzatzo on 13/12/2016.
//  Copyright © 2016 Marsel Tzatzo. All rights reserved.
//

import UIKit

class PipHelper: NSObject {

    static func calculatePip(value: Double, pipMultiplier: Int) -> Int {
        return Int((value * Double(pipMultiplier)).truncatingRemainder(dividingBy: 100));
    }
    
    static func calculateFractionalPip(value: Double, pipMultiplier: Int, digits: Int) -> Int {
        return Int((value * Double(pipMultiplier * 10)).truncatingRemainder(dividingBy: 10));
    }
    
}
