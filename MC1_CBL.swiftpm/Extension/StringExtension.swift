//
//  File.swift
//  
//
//  Created by YU WONGEUN on 2023/03/25.
//

// MARK: - for typeWriter()
extension String {
    subscript(offset: Int) -> Character {
        self[index(startIndex, offsetBy: offset)]
    }
}
