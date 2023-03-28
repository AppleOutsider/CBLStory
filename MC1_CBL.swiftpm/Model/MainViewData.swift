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
    var peopleDirection: direction = .left
    var talkingPersonDirection: direction = .left
    var lineModels: LineModels
    
    enum direction {
        case left, right, center
        case leftAndRight
        case all, none
    }
    
    init(leftImage: String? = nil, centerImage: String? = nil, rightImage: String? = nil, bgImage: String, peopleDirection: direction, talkingPersonDirection: direction, lineModels: LineModels) {
        self.leftImage = leftImage
        self.centerImage = centerImage
        self.rightImage = rightImage
        self.bgImage = bgImage
        self.peopleDirection = peopleDirection
        self.talkingPersonDirection = talkingPersonDirection
        self.lineModels = lineModels
    }
    
}
