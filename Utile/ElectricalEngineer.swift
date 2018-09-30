//
//  ElectricalEngineer.swift
//  Utile
//
//  Created by student on 9/29/18.
//  Copyright © 2018 student. All rights reserved.
//

import Foundation

struct ElectricalEngineer {
    static var electricalEngineer = ElectricalEngineer()
    var band1:Int
    var band2:Int
    var multiplier:Int
    
    var correctAnswer:Int {
        return ((band1 * 10) + band2) * 10 ** multiplier
    }
    
    var numAttempts:Int
    var numCorrect:Int
    var percentageCorrect:Double {
        get {
            if numAttempts == 0 {
                return 0.0
            } else {
             return Double((numCorrect/numAttempts) * 100)
            }
        }
        
    }
    var currentBands:[String]
    init() {
        self.band1 = 0
        self.band2 = 0
        self.multiplier = 0
        self.numAttempts = 0
        self.numAttempts = 0
        self.numCorrect = 0
        self.currentBands = []
        
    }
    mutating func generateProblem() -> [String] {
        
        band1 = Int(arc4random_uniform(10))

        band2 = Int(arc4random_uniform(10))
        multiplier = Int(arc4random_uniform(8))
        
        let bandColors:[String] = ["Black", "Brown", "Red", "Orange", "Yellow", "Green", "Blue", "Violet", "Grey", "White"]
        
        currentBands = [bandColors[band1], bandColors[band2],bandColors[multiplier]]
        return currentBands
    }
    
    mutating func checkAnswer(answer:String) -> Bool {
        var result  = false
        if let userAnswer = Int(answer) {
            numAttempts += 1
            if correctAnswer == userAnswer {
                numCorrect += 1
                result = true
            }
        }
        return result
    }
    
    mutating func resetStatistics() {
        numAttempts = 0
        numCorrect = 0
    }
}
