//
//  Roundable.swift
//  Rounding
//
//  Created by Christian Otkjær on 05/11/2017.
//  Copyright © 2017 Silverback IT. All rights reserved.
//

import Foundation

public protocol Roundable
{
    /// Largest integral value not greater than `self`
    var floor: Self { get }
    
    /// Smallest integral value not less than `self`
    var ceil: Self { get }
    
    /// Nearest integral value, eaqual to, less than, or greater than `self`
    var round: Self { get }
    
    /**
     Rounds `self` to arbitrary number
     
     - parameter number: the number to use in rounding
     - returns: `self` rounded to `number`
     */
    func rounded(toNearest number: Self) -> Self
    
    /**
     Round `self` to arbitrary number
     
     - parameter number: the number to use in rounding
     */
    mutating func round(toNearest number: Self)
}

extension Roundable
{
    public mutating func round(toNearest number: Self)
    {
        self = rounded(toNearest: number)
    }
}

extension Roundable where Self: FloatingPoint
{
    public func rounded(toNearest number: Self) -> Self
    {
        let n = abs(number)
        
        let remainder = truncatingRemainder(dividingBy: n)
        return remainder < n / 2 ? self - remainder: self - remainder + n
    }
}
