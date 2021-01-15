//
//  Wage.swift
//  window-shopper
//
//  Created by Mariel Pacada on 1/15/21.
//

import Foundation

class Wage {
    
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price / wage))
    }
}
