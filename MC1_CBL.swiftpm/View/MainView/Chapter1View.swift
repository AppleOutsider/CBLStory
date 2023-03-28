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
    @State var mainViewDataList: [MainViewData] = [
        MainViewData(bgImage: "bg", lineModels:  LineModels(names: " ", lines: " ")),
        MainViewData(bgImage: "bg", lineModels:  LineModels(names: "사야1", lines: "사야의 대사1")),
        MainViewData(bgImage: "bg", lineModels:  LineModels(names: "사야2", lines: "사야의 대사2"))
    ]
    
    var body: some View {
            ZStack {
                // 배경이미지 대체 배경이미지 .onApear { bgm 재생 }
                Image("bg")
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea(.all)
                    .onAppear {
                        // bgm 재생
                    }
                GeometryReader { geo in
                    Image("bg")
                        .resizable()
                        .ignoresSafeArea()
                        .frame(height: geo.size.height)
                    
                    VStack {
                        Spacer()
                        HStack {
                            /**
                             이미지 3개 대체
                             상황따라 .brigtness, .opacity 조절하게
                             커스텀뷰로 만들어서 넣을 것
                             */
                            Image(systemName: "bolt")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geo.size.width / 3)
                            Image(systemName: "bolt")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geo.size.width / 3)
                            Image(systemName: "bolt")
                                .resizable()
                                .scaledToFit()
                                .frame(width: geo.size.width / 3)
                        }
                    }
                    
                    VStack {
                        Spacer()
                        Button {
                            
                            dataindex += 1
                            // 상황따라 효과음도 재생
                            isTouchable = false
                            typeWriter()
                            // data 다 읽었으면 선택지 화면으로 넘어가게함 & 재생중인 bgm stop
                        } label: {
    //                        switch _ {
    //
    //                        }
                            
                            CustomWhiteLeft(name: mainViewDataList[dataindex].lineModels.names,
                                            line: text, soundEffect: nil)
                        }
                        .frame(width: geo.size.width, height: geo.size.height / 3)
                    }
                }
            }
    }
    
    
    // MARK: - 타이핑 애니메이션
    func typeWriter(at position: Int = 0) {
        if position == 0 {
            text = ""
        }

        if position < mainViewDataList[dataindex].lineModels.lines.count {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                text.append(mainViewDataList[dataindex].lineModels.lines[position])
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


/**?
 
 
 chapter 1 -> 선택지 -> 챕터 2
                -> 배드엔딩
 
 
 
 **/


