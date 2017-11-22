//
//  Rounding.swift
//  Rounding
//
//  Created by Christian Otkjær on 05/11/2017.
//  Copyright © 2017 Silverback IT. All rights reserved.
//

import Foundation

extension Double: Roundable
{
    /// Largest integral value not greater than `self`
    public var floor: Double { return Foundation.floor(self) }
    
    /// Smallest integral value not less than `self`
    public var ceil: Double { return Foundation.ceil(self) }
    
    /// Nearest integral value, eaqual to, less than, or greater than `self`
    public var round: Double { return Foundation.round(self) }
}

extension Float: Roundable
{
    /// Largest integral value not greater than `self`
    public var floor: Float { return Foundation.floorf(self) }
    
    /// Smallest integral value not less than `self`
    public var ceil: Float { return Foundation.ceilf(self) }
    
    /// Nearest integral value, eaqual to, less than, or greater than `self`
    public var round: Float { return Foundation.roundf(self) }
}
