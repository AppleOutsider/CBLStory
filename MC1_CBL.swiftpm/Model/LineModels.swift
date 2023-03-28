//
//  File.swift
//  
//
//  Created by YU WONGEUN on 2023/03/25.
//

import Foundation

class LineModels {
    var names: String
    var lines: String
//    var position: personPosition = .left
    var soundEffect: String? = nil
    
    enum personPosition {
        case left
        case right
        case center
        case none
    }
    
    init(names: String, lines: String, soundEffect: String? = nil) {
        self.names = names
        self.lines = lines
        self.soundEffect = soundEffect
    }
}
