//
//  LogicalDie.swift
//  D&D Fair Dice
//
//  Created by Wills Blake on 5/7/18.
//  Copyright © 2018 Trap Card. All rights reserved.
//

import Foundation

class LogicalDie
{
    
    //member variables
    private var topNumber: Int?
    private var currentNumber: Int?
    
    //member functions
    public func roll() -> Int
    {
        if let randomNumber = self.topNumber?.topNumberRandom()
        {
            self.currentNumber = randomNumber
            return randomNumber
        }
        return 0
        
    }
    
    public func setTopNumber(withNumber number: Int)
    {
        self.topNumber = number
    }
    
    public func setCurrentNumber(withNumber number: Int)
    {
        self.currentNumber = number
    }
    

}

extension Int
{
    public func topNumberRandom() -> Int
    {
        let randomNumber = arc4random_uniform(UInt32(self)) + 1
        let result = Int(randomNumber)
        return result
    }
}
