//
//  File.swift
//  
//
//  Created by ChoiYujin on 2023/03/28.
//

import Foundation

class Chapter1Data {
    static let dataList: [MainViewData] = [
        MainViewData(leftImage: "",
                     centerImage: "",
                     rightImage: "" ,
                     bgImage: "bg1",
                     peopleDirection: .none,
                     talkingPersonDirection: .none,
                     lineModels: LineModels(names: "", lines: "")),
        MainViewData(leftImage: "npc",
                     centerImage: "npc",
                     rightImage: "npc" ,
                     bgImage: "bg1",
                     peopleDirection: .none,
                     talkingPersonDirection: .none,
                     lineModels: LineModels(names: "내레이션", lines: "화창한 여름날의 호그와트 근처 바닷가... '포우화앙'",soundEffect: "mc1_sound_kids")),
//        MainViewData(leftImage: "npc",
//                     centerImage: "npc",
//                     rightImage: "npc" ,
//                     bgImage: "bg1",
//                     peopleDirection: .all,
//                     talkingPersonDirection: .all,
//                     lineModels: LineModels(names: "호그와트 학생들", lines: "우와! 바다다~")),
//        MainViewData(leftImage: "npc",
//                     centerImage: "npc",
//                     rightImage: "npc" ,
//                     bgImage: "bg1",
//                     peopleDirection: .all,
//                     talkingPersonDirection: .all,
//                     lineModels: LineModels(names: "호그와트 학생들", lines: "꺄르르 꺄르르~")),
//        MainViewData(leftImage: "npc",
//                     centerImage: "npc",
//                     rightImage: "npc" ,
//                     bgImage: "bg1",
//                     peopleDirection: .all,
//                     talkingPersonDirection: .all,
//                     lineModels: LineModels(names: "호그와트 학생들", lines: "첨벙 청벙~")),
        MainViewData(leftImage: "ron_surprised",
                     centerImage: "harry_surprised",
                     rightImage: "her_surprised" ,
                     bgImage: "bg1",
                     peopleDirection: .all,
                     talkingPersonDirection: .left,
                     lineModels: LineModels(names: "산 위즐리", lines: "호그와트 근처에 이런 바닷가가 있었어?")),
        MainViewData(leftImage: "ron_surprised",
                     centerImage: "harry_surprised",
                     rightImage: "her_surprised",
                     bgImage: "bg1",
                     peopleDirection: .all,
                     talkingPersonDirection: .center,
                     lineModels: LineModels(names: "해나포터", lines: "호그와트 원래 산 속에 있던거 아니었어?")),
        MainViewData(leftImage: "ron_surprised",
                     centerImage: "harry_surprised",
                     rightImage: "her_puzzled",
                     bgImage: "bg1",
                     peopleDirection: .all,
                     talkingPersonDirection: .right,
                     lineModels: LineModels(names: "화르미온느", lines: "작가의 설정붕괴는 대충 넘어가자...")),
//        MainViewData(leftImage: "ron_smile",
//                     centerImage: "harry_smile",
//                     rightImage: "harry_smile",
//                     bgImage: "bg1",
//                     peopleDirection: .all,
//                     talkingPersonDirection: .center,
//                     lineModels: LineModels(names: "해나포터", lines: "아무튼 모처럼 바다도 보고 좋다.")),
//        MainViewData(leftImage: "ron_smile",
//                     centerImage: "harry_smile",
//                     rightImage: "her_smile",
//                     bgImage: "bg1",
//                     peopleDirection: .all,
//                     talkingPersonDirection: .left,
//                     lineModels: LineModels(names: "산 위즐리", lines: "우와~ 포우화앙의 특산품 애플도 파는구나~ 우리 사먹어 보자~ ")),
//        MainViewData(leftImage: "",
//                     centerImage: "applelogo",
//                     rightImage: "" ,
//                     bgImage: "bg1",
//                     peopleDirection: .center,
//                     talkingPersonDirection: .center,
//                     lineModels: LineModels(names: "내레이션", lines: "포우화앙의 명물 '애플'", soundEffect: "mc1_sound_netflix")),
//        MainViewData(leftImage: "ron_smile",
//                     centerImage: "harry_smile",
//                     rightImage: "her_smile",
//                     bgImage: "bg1",
//                     peopleDirection: .all,
//                     talkingPersonDirection: .right,
//                     lineModels: LineModels(names: "화르미온느", lines: "확실히 애플나무가 많긴하네.")),
//        MainViewData(leftImage: "",
//                     centerImage: "applelogoonthetree",
//                     rightImage: "" ,
//                     bgImage: "bg1",
//                     peopleDirection: .center,
//                     talkingPersonDirection: .center,
//                     lineModels: LineModels(names: "내레이션", lines: "포우화앙의 가로수 애플나무", soundEffect: "mc1_sound_netflix")),
        MainViewData(leftImage: "",
                     centerImage: "hed_annoyed",
                     rightImage: "" ,
                     bgImage: "bg2",
                     peopleDirection: .center,
                     talkingPersonDirection: .center,
                     lineModels: LineModels(names: "내레이션", lines: "멀리서 조이위그가 날아온다.", soundEffect: "mc1_sound_fly")),
        MainViewData(leftImage: "",
                     centerImage: "hed_annoyed",
                     rightImage: "" ,
                     bgImage: "bg2",
                     peopleDirection: .center,
                     talkingPersonDirection: .center,
                     lineModels: LineModels(names: "조이위그", lines: "부엉. 부엉. 부엉. (편지나 빨리 받아. 힘들어 죽겠어)", soundEffect: "mc1_sound_owl")),
        MainViewData(leftImage: "ron_surprised",
                     centerImage: "harry_surprised",
                     rightImage: "her_surprised",
                     bgImage: "bg2",
                     peopleDirection: .all,
                     talkingPersonDirection: .center,
                     lineModels: LineModels(names: "해나포터", lines: "조이위그가 무슨일이지? 사야도어 교수님 편지잖아?")),
//        MainViewData(leftImage: "ron_puzzled",
//                     centerImage: "harry_surprised",
//                     rightImage: "her_surprised",
//                     bgImage: "bg2",
//                     peopleDirection: .all,
//                     talkingPersonDirection: .left,
//                     lineModels: LineModels(names: "산 위즐리", lines: "또 뭘로 부려 먹으려고... 불안한데...")),
//        MainViewData(leftImage: "ron_puzzled",
//                     centerImage: "harry_surprised",
//                     rightImage: "her_annoyed",
//                     bgImage: "bg2",
//                     peopleDirection: .all,
//                     talkingPersonDirection: .right,
//                     lineModels: LineModels(names: "화르미온느", lines: "빨리 열어봐 뭐라고 적혀 있는지 보게.")),
        MainViewData(leftImage: "",
                     centerImage: "dumb_smile",
                     rightImage: "" ,
                     bgImage: "bg2",
                     peopleDirection: .center,
                     talkingPersonDirection: .center,
                     lineModels: LineModels(names: "사야도어", lines: "류포이가 금지된 마법서를 훔쳐갔다. 자네들이 찾아와주게. -알버트 사야도어", soundEffect: "mc1_sound_netflix")),
//        MainViewData(leftImage: "ron_puzzled",
//                     centerImage: "harry_puzzled",
//                     rightImage: "her_puzzled",
//                     bgImage: "bg2",
//                     peopleDirection: .all,
//                     talkingPersonDirection: .all,
//                     lineModels: LineModels(names: "헤리포터, 산 위즐리, 화르미온느", lines: "......??")),
        MainViewData(leftImage: "ron_annoyed",
                     centerImage: "harry_annoyed",
                     rightImage: "her_annoyed",
                     bgImage: "bg2",
                     peopleDirection: .all,
                     talkingPersonDirection: .center,
                     lineModels: LineModels(names: "해나포터", lines: "잃어버린건 본인이시고, 일은 우리가...?")),
//        MainViewData(leftImage: "ron_annoyed",
//                     centerImage: "harry_annoyed",
//                     rightImage: "her_annoyed",
//                     bgImage: "bg2",
//                     peopleDirection: .all,
//                     talkingPersonDirection: .left,
//                     lineModels: LineModels(names: "산 위즐리", lines: "말 안들으면 저번처럼 고의로 '0'점 줄지도 몰라...")),
//        MainViewData(leftImage: "ron_surprised",
//                     centerImage: "harry_surprised",
//                     rightImage: "her_surprised",
//                     bgImage: "bg2",
//                     peopleDirection: .all,
//                     talkingPersonDirection: .right,
//                     lineModels: LineModels(names: "화르미온느", lines: "생각할 시간에 얼른 가자.")),
        MainViewData(leftImage: "ron_puzzled",
                     centerImage: "harry_puzzled",
                     rightImage: "her_puzzled",
                     bgImage: "bg2",
                     peopleDirection: .all,
                     talkingPersonDirection: .left,
                     lineModels: LineModels(names: "산 위즐리", lines: "류포이가 어디로 도망간줄 알고?")),
        MainViewData(leftImage: "",
                     centerImage: "mcg_serious",
                     rightImage: "" ,
                     bgImage: "bg2",
                     peopleDirection: .center,
                     talkingPersonDirection: .center,
                     lineModels: LineModels(names: "내레이션", lines: "어디선가 나타난 제고나걸 교수")),
        MainViewData(leftImage: "",
                     centerImage: "mcg_serious",
                     rightImage: "" ,
                     bgImage: "bg2",
                     peopleDirection: .center,
                     talkingPersonDirection: .center,
                     lineModels: LineModels(names: "제고나걸", lines: "류포이가 어둠의 던전 '씨퐈'로 가는걸 봤다네.")),
        MainViewData(leftImage: "ron_puzzled",
                     centerImage: "harry_puzzled",
                     rightImage: "her_puzzled",
                     bgImage: "bg2",
                     peopleDirection: .all,
                     talkingPersonDirection: .all,
                     lineModels: LineModels(names: "해나포터, 산 위즐리, 화르미온느", lines: "교수님 그걸 어떻게 아셨어요?")),
        MainViewData(leftImage: "",
                     centerImage: "mcg_serious",
                     rightImage: "",
                     bgImage: "bg2",
                     peopleDirection: .center,
                     talkingPersonDirection: .center,
                     lineModels: LineModels(names: "제고나걸", lines: "(말없이 사라짐.)", soundEffect: "mc1_sound_run")),
        MainViewData(leftImage: "ron_puzzled",
                     centerImage: "harry_puzzled",
                     rightImage: "her_puzzled",
                     bgImage: "bg2",
                     peopleDirection: .all,
                     talkingPersonDirection: .center,
                     lineModels: LineModels(names: "해나포터", lines: "굉장히 수상해;;;")),
        MainViewData(leftImage: "ron_puzzled",
                     centerImage: "harry_puzzled",
                     rightImage: "her_annoyed",
                     bgImage: "bg2",
                     peopleDirection: .all,
                     talkingPersonDirection: .right,
                     lineModels: LineModels(names: "화르미온느", lines: "너무 알려고 들지마, 이미 시나리오 작가 멘붕 상태야.")),
        MainViewData(leftImage: "",
                     centerImage: "",
                     rightImage: "" ,
                     bgImage: "bg2",
                     peopleDirection: .none,
                     talkingPersonDirection: .none,
                     lineModels: LineModels(names: "내레이션", lines: "사야도어의 편지를 받고 모험을 떠나는 3명의 마법사들에게 앞으로 무슨 일이 펼쳐질 것인가."))
      
        
    ]
}

/*
 🍎 해나(해나포터)
 웃음: harry_smile
 어리둥절: harry_puzzled
 슬픔: harry_sad
 고통: harry_painful
 짜증: harry_annoyed
 소리지름: harry_scream
 놀람: harry_surprised
 놀람+눈에서불 : harry_fire

 🍎 산(산 위즐리)
 웃음: ron_smile
 어리둥절: ron_puzzled
 슬픔: ron_sad
 고통: ron_painful
 화남: ron_angry
 짜증: ron_annoyed
 놀람: ron_surprised
 놀람+눈에서불 : ron_fire

 🍎 화은(화르미온느)
 웃음: her_smile
 어리둥절: her_puzzled
 슬픔: her_sad
 고통: her_painful
 짜증: her_annoyed
 놀람: her_surprised
 놀람+눈에서불 : her_fire

 🍎 류(류포이)
 화남: mal_angry
 슬픔: mal_sad
 짜증(찡그림): mal_annoyed
 놀람: mal_surprised
 소리지름: mal_scream
 소리지름+눈에서불 : mal_fire
 비열한 웃음: mal_smile
 멍때림: mal_mung

 🍎 류(류포이)
 화남+눈에서불: MC1mal_angry
 비열한웃음+눈에서불: MC1mal_smile

 🍎 조이(조이위그)
 찡그림: hed_annoyed
 소리지름: hed_scream

 🍎 유진(유그리드)
 호탕한웃음: hag_smile

 🍎 사야(사야도어)
 웃음: dumb_smile

 🍎 제이슨(제고나걸)
 웃음: mcg_smile
 근엄: mcg_serious
 
 
 */
