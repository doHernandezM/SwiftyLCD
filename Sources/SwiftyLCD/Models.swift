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
