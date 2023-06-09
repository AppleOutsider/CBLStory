//
//  Chapter3_2Data.swift
//  DataTest
//
//  Created by ChoiYujin on 2023/03/28.
//

import Foundation


class Chapter3_2Data {
    static let dataList: [MainViewData] = [
        MainViewData(leftImage: "",
                     centerImage: "",
                     rightImage: "" ,
                     bgImage: "bg12",
                     peopleDirection: .none,
                     talkingPersonDirection: .none,
                     lineModels: LineModels(names: "", lines: "")),
        MainViewData(leftImage: "",
                     centerImage: "hed_scream",
                     rightImage: "" ,
                     bgImage: "bg12",
                     peopleDirection: .center,
                     talkingPersonDirection: .center,
                     lineModels: LineModels(names: "내레이션", lines: "그때 멀리서 들려오는 날개짓소리",soundEffect: "mc1_sound_fly")),
        MainViewData(leftImage: "",
                     centerImage: "hed_scream",
                     rightImage: "" ,
                     bgImage: "bg12",
                     peopleDirection: .center,
                     talkingPersonDirection: .center,
                     lineModels: LineModels(names: "내레이션", lines: "조드위그 입에는 '애플나무 지팡이'가 물려있다.")),
        MainViewData(leftImage: "",
                     centerImage: "hed_scream",
                     rightImage: "" ,
                     bgImage: "bg12",
                     peopleDirection: .center,
                     talkingPersonDirection: .center,
                     lineModels: LineModels(names: "조드위그", lines: "부엉! 부엉! 부엉!(어서 받아!!)", soundEffect: "mc1_sound_owl")),
        MainViewData(leftImage: "ron_annoyed",
                     centerImage: "harry_scream",
                     rightImage: "her_annoyed" ,
                     bgImage: "bg12",
                     peopleDirection: .center,
                     talkingPersonDirection: .center,
                     lineModels: LineModels(names: "해나포터", lines: "고마워 조드위그!! 루모스!!")),
        MainViewData(leftImage: "ron_annoyed",
                     centerImage: "harry_scream",
                     rightImage: "her_annoyed" ,
                     bgImage: "bg12",
                     peopleDirection: .center,
                     talkingPersonDirection: .center,
                     lineModels: LineModels(names: "내레이션", lines: "어둠이 걷히며..")), // 하얀 배경으로 다시
        MainViewData(leftImage: "",
                     centerImage: "mal_sad",
                     rightImage: "" ,
                     bgImage: "bg12",
                     peopleDirection: .center,
                     talkingPersonDirection: .center,
                     lineModels: LineModels(names: "내레이션", lines: "류포이를 둘러싸고 있는 에너지가 포스트잇으로 되돌아간다.",soundEffect: "mc1_sound_postit.mp3")),
        MainViewData(leftImage: "",
                     centerImage: "mal_sad",
                     rightImage: "" ,
                     bgImage: "bg12",
                     peopleDirection: .center,
                     talkingPersonDirection: .center,
                     lineModels: LineModels(names: "류포이", lines: "크아아아아~"))
        
    ]
}
