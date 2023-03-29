

class Chapter2_1Data {
    
    static let dataList: [MainViewData] = [
        MainViewData(leftImage: "",
                     centerImage: "",
                     rightImage: "" ,
                     bgImage: "bg3",
                     peopleDirection: .none,
                     talkingPersonDirection: .none,
                     lineModels: LineModels(names: "", lines: "")),
        
        MainViewData(leftImage: "",
                     centerImage: "",
                     rightImage: "",
                     bgImage: "bg3",
                     peopleDirection: .none,
                     talkingPersonDirection: .none,
                     lineModels: LineModels(names: "내레이션", lines: "어둠의 던전 \"씨퐈\"에 도착한 해리포터 일행.", soundEffect: nil)),
        
        MainViewData(leftImage: "",
                     centerImage: "",
                     rightImage: "",
                     bgImage: "bg3",
                     peopleDirection: .none,
                     talkingPersonDirection: .none,
                     lineModels: LineModels(names: "내레이션", lines: "그들은 말포이의 발자국을 따라 안으로 들어간다.", soundEffect: "mc1_sound_walk.mp3")),
        
        MainViewData(leftImage: "",
                     centerImage: "",
                     rightImage: "",
                     bgImage: "bg4",
                     peopleDirection: .none, talkingPersonDirection: .none,
                     lineModels: LineModels(names: "내레이션", lines: "갈림길에서 해리포터 일행은 오른쪽의 반짝이는 길로 들어간다.", soundEffect: nil)),
        
        MainViewData(leftImage: "ron_annoyed",
                     centerImage: "harry_annoyed",
                     rightImage: "her_annoyed",
                     bgImage: "bg5",
                     peopleDirection: .center,
                     talkingPersonDirection: .none,
                     lineModels: LineModels(names: "해리포터", lines: "항상 궁금했는데, 악당들은 왜 이런 어두운 동굴로 들어올까?", soundEffect: nil)),
        
        MainViewData(leftImage: "ron_smile",
                     centerImage: "harry_smile",
                     rightImage: "her_smile",
                     bgImage: "bg5",
                     peopleDirection: .left,
                     talkingPersonDirection: .left,
                     lineModels: LineModels(names: "론위즐리", lines: "대낮에 놀이터에서 악당놀이하면 주민신고 들어가잖아.", soundEffect: nil)),
        
        MainViewData(leftImage: "ron_smile",
                     centerImage: "harry_smile",
                     rightImage: "her_smile",
                     bgImage: "bg5",
                     peopleDirection: .left, talkingPersonDirection: .left,
                     lineModels: LineModels(names: "론위즐리", lines: "악당도 벌금은 무서울거야.", soundEffect: nil)),
        
        MainViewData(leftImage: "ron_suprised",
                     centerImage: "harry_suprised",
                     rightImage: "her_suprised",
                     bgImage: "bg5",
                     peopleDirection: .right,
                     talkingPersonDirection: .right,
                     lineModels: LineModels(names: "헤르미온느", lines: "저기 말포이다!!", soundEffect: nil)),
        
        MainViewData(leftImage: "",
                     centerImage: "",
                     rightImage: "",
                     bgImage: "bg5",
                     peopleDirection: .none,
                     talkingPersonDirection: .none,
                     lineModels: LineModels(names: "내레이션", lines: "동굴 안쪽에서 해리포터 일행을 웃으면서 바라보는 말포이!!", soundEffect: "mc1_sound_netflix.mp3")),
        
        MainViewData(leftImage: "",
                     centerImage: "mal_smile",
                     rightImage: "",
                     bgImage: "bg5",
                     peopleDirection: .center,
                     talkingPersonDirection: .center,
                     lineModels: LineModels(names: "말포이", lines: "너희가 날 상..", soundEffect: nil)),
        
        MainViewData(leftImage: "ron_scream",
                     centerImage: "harry_scream",
                     rightImage: "her_scream",
                     bgImage: "bg5",
                     peopleDirection: .center,
                     talkingPersonDirection: .center,
                     lineModels: LineModels(names: "해리포터", lines: "입닥처 말포이!!", soundEffect: nil)),
        
        MainViewData(leftImage: "",
                     centerImage: "mal_annoyed",
                     rightImage: "",
                     bgImage: "bg5",
                     peopleDirection: .center,
                     talkingPersonDirection: .center,
                     lineModels: LineModels(names: "말포이", lines: "아니. 내말은.. 너희..", soundEffect: nil)),
        
        // 이 부분 확인 필요 - 사람 위치
        MainViewData(leftImage: "ron_scream",
                     centerImage: "harry_scream",
                     rightImage: "her_scream",
                     bgImage: "bg5",
                     peopleDirection: .leftAndRight,
                     talkingPersonDirection: .left,
                     lineModels: LineModels(names: "론위즐리", lines: "입닥처 말포이!", soundEffect: nil)),
        
        MainViewData(leftImage: "",
                     centerImage: "mal_annoyed",
                     rightImage: "",
                     bgImage: "bg5",
                     peopleDirection: .center,
                     talkingPersonDirection: .center,
                     lineModels: LineModels(names: "말포이", lines: "아니. 내말좀 들어..", soundEffect: nil)),
        
        MainViewData(leftImage: "ron_scream",
                     centerImage: "harry_scream",
                     rightImage: "her_scream",
                     bgImage: "bg5",
                     peopleDirection: .all,
                     talkingPersonDirection: .right,
                     lineModels: LineModels(names: "헤르미온느", lines: "입닥처 말포이!", soundEffect: nil)),
        
        MainViewData(leftImage: "",
                     centerImage: "mal_angry",
                     rightImage: "",
                     bgImage: "bg5",
                     peopleDirection: .center,
                     talkingPersonDirection: .center,
                     lineModels: LineModels(names: "말포이", lines: "으아아아아아아!!!!!!", soundEffect: nil)),
        
        MainViewData(leftImage: "",
                     centerImage: "",
                     rightImage: "",
                     bgImage: "bg5",
                     peopleDirection: .none,
                     talkingPersonDirection: .none,
                     lineModels: LineModels(names: "내레이션", lines: "화가난 말포이는 마법함정을 발동하였다.", soundEffect: "mc1_sound_magic.mp3")),
        
        MainViewData(leftImage: "",
                     centerImage: "",
                     rightImage: "",
                     bgImage: "bg5",
                     peopleDirection: .none,
                     talkingPersonDirection: .none,
                     lineModels: LineModels(names: "내레이션", lines: "마법함정 \"솔루션은 완성되었다!\" 가 발동되어 모든게 끝난 환상이 해리포터 일행을 감쌌다.", soundEffect: nil)),
        
        MainViewData(leftImage: "ron_smile",
                     centerImage: "harry_smile",
                     rightImage: "her_smile",
                     bgImage: "bg5",
                     peopleDirection: .center,
                     talkingPersonDirection: .center,
                     lineModels: LineModels(names: "해리포터", lines: "뭐야~ 다 끝났잖아~ 우리가 할게 없네~", soundEffect: nil)),
        
        MainViewData(leftImage: "ron_smile",
                     centerImage: "harry_smile",
                     rightImage: "her_smile",
                     bgImage: "bg5",
                     peopleDirection: .left,
                     talkingPersonDirection: .left,
                     lineModels: LineModels(names: "론위즐리", lines: "얘들아 다 끝났는데, 콜로세움가서 퀴디치나 한판하자. 내가 미드갈께", soundEffect: nil)),
        
        MainViewData(leftImage: "ron_smile",
                     centerImage: "harry_smile",
                     rightImage: "her_smile",
                     bgImage: "bg5",
                     peopleDirection: .right,
                     talkingPersonDirection: .right,
                     lineModels: LineModels(names: "헤르미온느", lines: "\"머글 놀이\" 나 보러가야겠다~", soundEffect: nil)),
        
        MainViewData(leftImage: "",
                     centerImage: "dumb_smile",
                     rightImage: "",
                     bgImage: "bg5",
                     peopleDirection: .center,
                     talkingPersonDirection: .center,
                     lineModels: LineModels(names: "덤블도어", lines: "호호호호~", soundEffect: "mc1_sound_hoho.mp3")),
        
        MainViewData(leftImage: "ron_smile",
                     centerImage: "harry_smile",
                     rightImage: "her_smile",
                     bgImage: "bg5",
                     peopleDirection: .all,
                     talkingPersonDirection: .all,
                     lineModels: LineModels(names: "해리포터, 론위즐리, 헤르미온느", lines: "교수님~ (헤롱상태)", soundEffect: nil)),
        
        MainViewData(leftImage: "",
                     centerImage: "dumb_smile",
                     rightImage: "",
                     bgImage: "bg5",
                     peopleDirection: .center,
                     talkingPersonDirection: .center,
                     lineModels: LineModels(names: "덤블도어", lines: "호호호호~", soundEffect: "mc1_sound_hoho.mp3")),
        
        MainViewData(leftImage: "ron_smile",
                     centerImage: "harry_smile",
                     rightImage: "her_smile",
                     bgImage: "bg5",
                     peopleDirection: .all,
                     talkingPersonDirection: .all,
                     lineModels: LineModels(names: "해리포터, 론위즐리, 헤르미온느", lines: "교수님~ (약간 헤롱상태)", soundEffect: nil)),
        
        MainViewData(leftImage: "",
                     centerImage: "dumb_smile",
                     rightImage: "",
                     bgImage: "bg5",
                     peopleDirection: .center,
                     talkingPersonDirection: .center,
                     lineModels: LineModels(names: "덤블도어", lines: "호호호호~", soundEffect: "mc1_sound_hoho.mp3")),
        
        MainViewData(leftImage: "ron_annoyed",
                     centerImage: "harry_annoyed",
                     rightImage: "her_annoyed",
                     bgImage: "bg5",
                     peopleDirection: .all,
                     talkingPersonDirection: .all,
                     lineModels: LineModels(names: "해리포터, 론위즐리, 헤르미온느", lines: "아 빨리좀 말해요!!", soundEffect: nil)),
        MainViewData(leftImage: "",
                     centerImage: "dumb_smile",
                     rightImage: "",
                     bgImage: "bg5",
                     peopleDirection: .center,
                     talkingPersonDirection: .center,
                     lineModels: LineModels(names: "덤블도어", lines: "여러분~ 솔루션을 먼저 생각하지 말아요~", soundEffect: nil))]
}



