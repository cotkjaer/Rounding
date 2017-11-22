//
//  RoundingTests.swift
//  RoundingTests
//
//  Created by Christian Otkjær on 05/11/2017.
//  Copyright © 2017 Silverback IT. All rights reserved.
//

import XCTest
@testable import Rounding

class RoundingTests: XCTestCase
{
    func test_round()
    {
        var d: Double? = nil
        
        XCTAssertEqual(d?.round, nil)
        XCTAssertEqual(round(d), nil)
        
        d = .pi
        
        XCTAssertNotEqual(d?.round, nil)
        XCTAssertEqual(round(d), 3)
        
        XCTAssertEqual(Double.pi.round, 3)
        XCTAssertEqual(Double(3).round, 3)
        XCTAssertEqual(Double(-3).round, -3)
        XCTAssertEqual((-Double.pi).round, -3)
        
        XCTAssertEqual(Float.pi.round, 3)
        XCTAssertEqual(Float(3).round, 3)
        XCTAssertEqual(Float(-3).round, -3)
        XCTAssertEqual((-Float.pi).round, -3)
    }
    
    func test_ceil()
    {
        var d: Double? = nil
        
        XCTAssertEqual(d?.ceil, nil)
        XCTAssertEqual(ceil(d), nil)
        
        d = .pi
        
        XCTAssertNotEqual(d?.ceil, nil)
        XCTAssertEqual(ceil(d), 4)
        
        
        XCTAssertEqual(Double.pi.ceil, 4)
        XCTAssertEqual(Double(3).ceil, 3)
        XCTAssertEqual(Double(-3).ceil, -3)
        XCTAssertEqual((-Double.pi).ceil, -3)
        
        XCTAssertEqual(Float.pi.ceil, 4)
        XCTAssertEqual(Float(3).ceil, 3)
        XCTAssertEqual(Float(-3).ceil, -3)
        XCTAssertEqual((-Float.pi).ceil, -3)
    }
    
    func test_floor()
    {
        var d: Double? = nil
        
        XCTAssertEqual(d?.floor, nil)
        XCTAssertEqual(floor(d), nil)
        
        d = .pi
        
        XCTAssertNotEqual(d?.floor, nil)
        XCTAssertEqual(floor(d), 3)


        XCTAssertEqual(Double.pi.floor, 3)
        XCTAssertEqual(Double(3).floor, 3)
        XCTAssertEqual(Double(-3).floor, -3)
        XCTAssertEqual((-Double.pi).floor, -4)
        
        XCTAssertEqual(Float.pi.floor, 3)
        XCTAssertEqual(Float(3).floor, 3)
        XCTAssertEqual(Float(-3).floor, -3)
        XCTAssertEqual((-Float.pi).floor, -4)
    }
    
    func test_round_to_nearest()
    {
        let d = 5.081
        
        XCTAssertEqual(d.rounded(toNearest: 100), 0.0)
        XCTAssertEqual(d.rounded(toNearest: 10), 10.0)
        XCTAssertEqual(d.rounded(toNearest: 1), 5.0)
        XCTAssertEqual(d.rounded(toNearest: 0.1), 5.1)
        XCTAssertEqual(d.rounded(toNearest: 0.01), 5.08)
        XCTAssertEqual(d.rounded(toNearest: 0.001), 5.081)
        XCTAssertEqual(d.rounded(toNearest: 0.0001), 5.081)
        XCTAssertEqual(d.rounded(toNearest: 0.0001), d.rounded(toNearest: 0.00000001))
        
        XCTAssertEqual(d.rounded(toNearest: 2.54), 5.08)
        XCTAssertEqual(d.rounded(toNearest: -2.54), 5.08)
    }
}
