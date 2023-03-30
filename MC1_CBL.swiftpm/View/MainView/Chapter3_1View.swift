//
//  File.swift
//  
//
//  Created by ChoiYujin on 2023/03/29.
//

import Foundation
import SwiftUI

struct Chapter3_1View: View {
    
    @State var dataindex: Int = 0
    @State var isTouchable: Bool = true
    @State var text: String = ""
    @State var textLine: String = ""
    @State var tag:Int? = nil

    
    var body: some View {
        NavigationView{
            ZStack {
                
                GeometryReader { geo in
                    
                    let w = geo.size.width
                    let h = geo.size.height
                    
                    Image(Chapter3_1Data.dataList[dataindex].bgImage)
                        .resizable()
                        .scaledToFill()
                        .ignoresSafeArea(.all)
                        .frame(width: geo.size.width, height: geo.size.height)
                        .onAppear {
                            Chapter3_1Bgm.instance.playSound()
                        }
                    Rectangle()
                        .fill(.white.opacity(0.0))
                        .frame(width: w - 40, height: h - 20)
                        .border(width: 2.5, edges: [.bottom, .leading, .top, .trailing], color: .white.opacity(0.4))
                        .padding(20)
                    
                    VStack {
                        Spacer()
                        HStack {
                            if let imageName = Chapter3_1Data.dataList[dataindex].leftImage {
                                
                                if Chapter3_1Data.dataList[dataindex].talkingPersonDirection == .left || Chapter3_1Data.dataList[dataindex].talkingPersonDirection == .leftAndRight || Chapter3_1Data.dataList[dataindex].talkingPersonDirection == .all {
                                    Image(imageName) // 수정해야함
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: geo.size.width / 3)
                                    
                                } else {
                                    Image(imageName) // 수정해야함
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: geo.size.width / 3)
                                        .brightness(-0.5)
                                       
                                }
                            }
                            if let imageName = Chapter3_1Data.dataList[dataindex].centerImage {
                                
                                if Chapter3_1Data.dataList[dataindex].talkingPersonDirection == .center || Chapter3_1Data.dataList[dataindex].talkingPersonDirection == .all {
                                    Image(imageName) // 수정해야함
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: geo.size.width / 3)
                                    
                                } else {
                                    Image(imageName) // 수정해야함
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: geo.size.width / 3)
                                        .brightness(-0.5)
                                        
                                }
                            }
                            if let imageName = Chapter3_1Data.dataList[dataindex].rightImage {
                                if Chapter3_1Data.dataList[dataindex].talkingPersonDirection == .right || Chapter3_1Data.dataList[dataindex].talkingPersonDirection == .leftAndRight || Chapter3_1Data.dataList[dataindex].talkingPersonDirection == .all {
                                    Image(imageName) // 수정해야함
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: geo.size.width / 3)
                                    
                                } else {
                                    Image(imageName) // 수정해야함
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: geo.size.width / 3)
                                        .brightness(-0.5)
                                        
                                }
                            }
                        }
                    }
                    
                    NavigationLink(destination: Select3View(), tag: 1, selection: self.$tag ) {}
                    
                    VStack {
                        Spacer()
                        Button {
                            
                            if dataindex + 1 == Chapter3_1Data.dataList.count {
                                Chapter3_1Bgm.instance.stopSound()
                                self.tag = 1;
                            } else {
                                dataindex += 1
                                if let soundeffect = Chapter3_1Data.dataList[dataindex].lineModels.soundEffect {
                                    EffectSound.instance.playSound(name: soundeffect)
                                }
                            }
                            isTouchable = false
                            typeWriter()
                            // data 다 읽었으면 선택지 화면으로 넘어가게함 & 재생중인 bgm stop
                        } label: {
                            
                            if Chapter3_1Data.dataList[dataindex].lineModels.names == "내레이션" {
                                CustomBlackCenter(name: Chapter3_1Data.dataList[dataindex].lineModels.names,
                                                  line: text, soundEffect: nil, geo: geo)
                            } else {
                                
                                switch Chapter3_1Data.dataList[dataindex].talkingPersonDirection {
                                case .left:
                                    CustomWhiteLeft(name: Chapter3_1Data.dataList[dataindex].lineModels.names,
                                                    line: text, soundEffect: nil, geo: geo)
                                case .right:
                                    CustomWhiteRight(name: Chapter3_1Data.dataList[dataindex].lineModels.names,
                                                     line: text, soundEffect: nil, geo: geo)
                                default:
                                    CustomWhiteCenter(name: Chapter3_1Data.dataList[dataindex].lineModels.names,
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
        .navigationViewStyle(StackNavigationViewStyle())
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden()
        .statusBarHidden()
        
    }
    
    // MARK: - 타이핑 애니메이션
    func typeWriter(at position: Int = 0) {
        if position == 0 {
            text = ""
        }
        
        if position < Chapter3_1Data.dataList[dataindex].lineModels.lines.count {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.05) {
                text.append(Chapter3_1Data.dataList[dataindex].lineModels.lines[position])
                typeWriter(at: position + 1)
            }
        } else {
            isTouchable = true
        }
    }
}

struct Chapter3_1View_Previews: PreviewProvider {
    
    static var previews: some View {
        Chapter3_1View()
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

