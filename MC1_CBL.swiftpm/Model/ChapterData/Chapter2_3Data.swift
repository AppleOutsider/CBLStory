//
//  Chapter2_num2Data.swift
//  DataTest
//
//  Created by ChoiYujin on 2023/03/28.
//

import Foundation

class Chapter2_3Data {
    static let dataList: [MainViewData] = [
        MainViewData(leftImage: "ron_puzzled",
                     centerImage: "harry_puzzled",
                     rightImage: "her_puzzled" ,
                     bgImage: "bg9",
                     peopleDirection: .all,
                     talkingPersonDirection: .all,
                     lineModels: LineModels(names: "해리포터, 론위즐리, 헤르미온느", lines: "아니, 우리가 왜 싸우고 있었지?")),
        MainViewData(leftImage: "",
                     centerImage: "mal_annoyed",
                     rightImage: "" ,
                     bgImage: "bg9",
                     peopleDirection: .center,
                     talkingPersonDirection: .center,
                     lineModels: LineModels(names: "말포이", lines: "이럴수가! 이번에도 또 빠져나오다니!! 두고보자!!")),
        MainViewData(leftImage: "",
                     centerImage: "dumb_smile",
                     rightImage: "" ,
                     bgImage: "bg9",
                     peopleDirection: .center,
                     talkingPersonDirection: .center,
                     lineModels: LineModels(names: "덤블도어", lines: "호호호호~ 여러분 이렇게 사이좋게 있으니 참 보기가 좋군요.")),
        MainViewData(leftImage: "",
                     centerImage: "dumb_smile",
                     rightImage: "" ,
                     bgImage: "bg9",
                     peopleDirection: .center,
                     talkingPersonDirection: .center,
                     lineModels: LineModels(names: "덤블도어", lines: "우리는 서로가 서로를 도와야 해요.")),
        MainViewData(leftImage: "ron_puzzled",
                     centerImage: "harry_smile",
                     rightImage: "her_smile" ,
                     bgImage: "bg9",
                     peopleDirection: .leftAndRight,
                     talkingPersonDirection: .leftAndRight,
                     lineModels: LineModels(names: "해리포터, 헤르미온느", lines: "네 교수님! 우리 론이 머리는 나빠도 사람은 착해요!!")),
        MainViewData(leftImage: "ron_puzzled",
                     centerImage: "harry_smile",
                     rightImage: "her_smile" ,
                     bgImage: "bg9",
                     peopleDirection: .left,
                     talkingPersonDirection: .left,
                     lineModels: LineModels(names: "론위즐리", lines: "??? (이게 맞아?)")),
        MainViewData(leftImage: "",
                     centerImage: "",
                     rightImage: "" ,
                     bgImage: "bg9",
                     peopleDirection: .none,
                     talkingPersonDirection: .none,
                     lineModels: LineModels(names: "내레이션", lines: "두번의 위기에서 벗어난 해리포터 일행, 그들은 마지막 종착지로 점점 더 나아간다.")),
        
    ]
}