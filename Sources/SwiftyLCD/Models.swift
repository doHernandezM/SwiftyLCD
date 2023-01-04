//
//  File.swift
//  
//
//  Created by Dennis Hernandez on 1/3/23.
//

import Foundation

public struct LCDData {
    var rs: UInt8 = 0
    var rw: UInt8 = 0
    var e: UInt8 = 1
    var led: UInt8 = 0
    var data: UInt8 = 0xff
    
    public init() {
    }
    
    public init(rs: UInt8, rw: UInt8, e: UInt8, led: UInt8, data: UInt8) {
        self.rs = rs
        self.rw = rw
        self.e = e
        self.led = led
        self.data = data
    }
    
    func lowNibbles() -> UInt8 {
        var nibble: UInt8 = rs
        nibble |= rw << 1
        nibble |= e << 2
        nibble |= led << 3
        nibble |= (data & 0x0F) << 4
        
        return nibble
    }
    
    func highNibble() -> UInt8 {
        var nibble: UInt8 = rs
        nibble |= rw << 1
        nibble |= e << 2
        nibble |= led << 3
        nibble |= (data & 0xF0)
        
        return nibble
    }
    
    static func assembleData(lowNibble: UInt8, highNibble: UInt8) -> UInt8 {
        return (highNibble & 0xF0) | ((lowNibble & 0x0F) << 4)
    }
}
