//
//  ceil.swift
//  Rounding
//
//  Created by Christian Otkjær on 05/11/2017.
//  Copyright © 2017 Silverback IT. All rights reserved.
//

public func ceil<R:Roundable>(_ optionalNumber: R?) -> R?
{
    return optionalNumber?.ceil
}
