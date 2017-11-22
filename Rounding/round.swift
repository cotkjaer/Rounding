//
//  round.swift
//  Rounding
//
//  Created by Christian Otkjær on 05/11/2017.
//  Copyright © 2017 Silverback IT. All rights reserved.
//

public func round<R:Roundable>(_ optionalNumber: R?) -> R?
{
    return optionalNumber?.round
}

/**
 Round `number` by an arbitrary number
 - parameter number: number to be rounded
 - parameter toNearest: the number to round by
 */
public func round<R:Roundable>(_ number: R, toNearest: R) -> R
{
    return number.rounded(toNearest: toNearest)
}
