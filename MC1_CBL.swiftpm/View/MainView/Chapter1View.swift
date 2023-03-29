//
//  File.swift
//  
//
//  Created by YU WONGEUN on 2023/03/24.
//

import Foundation
import SwiftUI

struct Chapter1View: View {
    
    @State var dataindex: Int = 0
    @State var isTouchable: Bool = true
    @State var text: String = ""
    @State var textLine: String = ""
    
    var body: some View {
        ZStack {
            
            GeometryReader { geo in
                Image(Chapter1Data.dataList[dataindex].bgImage)
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea(.all)
                    .frame(width: geo.size.width, height: geo.size.height)
                    .onAppear {
                       Chapter1Bgm.instance.playSound()
                    }
                Rectangle()
                    .fill(.white.opacity(0.0))
                    .frame(width: geo.size.width - 20, height: geo.size.height - 20)
                    .border(width: 1.0, edges: [.bottom, .leading, .top, .trailing], color: .white)
                
                VStack {
                    Spacer()
                    HStack {
                        /**
                         이미지 3개 대체
                         상황따라 .brigtness, .opacity 조절하게
                         커스텀뷰로 만들어서 넣을 것
                         */
                        if let imageName = Chapter1Data.dataList[dataindex].leftImage {
                            
                            Image(systemName: "bolt")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geo.size.width / 3)
                        }
                        if let imageName = Chapter1Data.dataList[dataindex].leftImage {
                            
                            Image(systemName: "bolt")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geo.size.width / 3)
                        }
                        if let imageName = Chapter1Data.dataList[dataindex].leftImage {
                            Image(systemName: "bolt")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geo.size.width / 3)
                        }
                    }
                }
                VStack {
                    Spacer()
                    Button {
                        
                        if dataindex + 1 == Chapter1Data.dataList.count {
                            Chapter1Bgm.instance.stopSound()
                        } else {
                            dataindex += 1
                            if let soundeffect = Chapter1Data.dataList[dataindex].lineModels.soundEffect {
                                EffectSound.instance.playSound(name: soundeffect)
                            }
                        }

                        isTouchable = false
                        typeWriter()
                        // data 다 읽었으면 선택지 화면으로 넘어가게함 & 재생중인 bgm stop
                    } label: {
                        
                        if Chapter1Data.dataList[dataindex].lineModels.names == "내레이션" {
                            CustomBlackCenter(name: Chapter1Data.dataList[dataindex].lineModels.names,
                                              line: text, soundEffect: nil, geo: geo)
                        } else {
                            
                            switch Chapter1Data.dataList[dataindex].talkingPersonDirection {
                            case .left:
                                CustomWhiteLeft(name: Chapter1Data.dataList[dataindex].lineModels.names,
                                                line: text, soundEffect: nil, geo: geo)
                            case .right:
                                CustomWhiteRight(name: Chapter1Data.dataList[dataindex].lineModels.names,
                                                 line: text, soundEffect: nil, geo: geo)
                            default:
                                CustomWhiteCenter(name: Chapter1Data.dataList[dataindex].lineModels.names,
                                                  line: text, soundEffect: nil, geo: geo)
                            }
                            
                            
                        }
                    }
                    .frame(width: geo.size.width, height: geo.size.height / 3)
                }
            }
        }
        .allowsHitTesting(isTouchable)
    }
    
    // MARK: - 타이핑 애니메이션
    func typeWriter(at position: Int = 0) {
        if position == 0 {
            text = ""
        }
        
        if position < Chapter1Data.dataList[dataindex].lineModels.lines.count {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.05) {
                text.append(Chapter1Data.dataList[dataindex].lineModels.lines[position])
                typeWriter(at: position + 1)
            }
        } else {
            isTouchable = true
        }
    }
}

struct MainView_preview: PreviewProvider {
    
    static var previews: some View {
        Chapter1View()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

// MARK: - characterimageView
//func chracterImageView(characterName: String, whichPerson: MainViewData.direction, geo: GeometryProxy, allowDirection: [MainViewData.direction]) -> some View {
//    return VStack {
//
//        if allowDirection.contains(whichPerson) {
//            Image(characterName)
//                .resizable()
//                .scaledToFit()
//                .frame(width: geo.size.width / 3)
//        } else {
//            Image(characterName)
//                .resizable()
//                .scaledToFit()
//                .frame(width: geo.size.width / 3)
//                .brightness(-0.4)
//                .opacity(0.6)
//        }
//    }
//}
