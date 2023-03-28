//
//  File.swift
//  
//
//  Created by ChoiYujin on 2023/03/28.
//

import Foundation

class MainViewData {
    
    var leftImage: String?
    var centerImage: String?
    var rightImage: String?
    var bgImage: String
    var lineModels: LineModels
    
    
    init(leftImage: String? = nil, centerImage: String? = nil, rightImage: String? = nil, bgImage: String, lineModels: LineModels) {
        self.leftImage = leftImage
        self.centerImage = centerImage
        self.rightImage = rightImage
        self.bgImage = bgImage
        self.lineModels = lineModels
    }
    
}
