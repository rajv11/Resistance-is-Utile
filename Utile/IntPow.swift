//
//  IntPow.swift
//  Utile
//
//  Created by student on 9/29/18.
//  Copyright © 2018 student. All rights reserved.
//

import Foundation

infix operator **: BitwiseShiftPrecedence
extension Int {
    static func **(base:Int, exponent:Int) -> Int {
    var product = 1
    for _ in 0 ..< exponent {
        product *= base
    }
    return product
}
}
