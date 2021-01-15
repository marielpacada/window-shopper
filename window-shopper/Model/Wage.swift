//
//  Wage.swift
//  window-shopper
//
//  Created by Mariel Pacada on 1/15/21.
//

import Foundation

class Wage {
    
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        let wage = Int(wage)
        return Int(ceil(price / Double(wage)))
        
        
        
    }
}
