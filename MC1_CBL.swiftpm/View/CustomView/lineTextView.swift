//
//  SwiftUIView.swift
//  
//
//  Created by YU WONGEUN on 2023/03/25.
//

import SwiftUI

struct lineTextView: View {
    // MARK: - variable
    @State var textCnt: Int = 0
    @State var text: String = " "
    @State var name: String = " "
    @State var lineModels: DataModels   // 데이터
    @State var touchValid: Bool = true  // 대사 typewriter() 중 터치 불가
    @State var hiddenText: Bool = false // 대사 박스 숨길지 말지
    @State var personPosition: DataModels.personPosition = .none    // 이 값에 따라 대사 박스 바뀜

    // geometryproxy 값 받아서 가변적으로 사이즈 조정
    // position에 따라 모서리 깎이게 바꿔주기
    // MARK: - body
    var body: some View {
        
        HStack(alignment: .center) {
            
                Button {
                    typeWriter()
                    touchValid = false
                } label: {
                    switch personPosition {
                    case .left:
                        CustomWhiteLeft()
                    case .right:
                        CustomWhiteRight()
                    case .center:
                        CustomWhiteCenter()
                    case .none: // 내레이션
                        CustomBlackCenter()
                    }
            
                } // label
                .frame(width: 1472, height: 279, alignment: .leading)
                .customHidden(hiddenText)
                // 대사 중에 터치 불가
                .allowsHitTesting(touchValid)
                // 배경 위치 잡을 때
                .offset(y: 370)
        } // HStack
    } // body
    
    // MARK: - Function
        
    func typeWriter(at position: Int = 0) {
        if position == 0 {
            text = ""
        }
        if position < lineModels.lines[textCnt].count {
            // write the letter at position "position" to "text"
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                print(position)
                print(textCnt)
                name = lineModels.names[textCnt]
                text.append(lineModels.lines[textCnt][position])
                // call this this function again with character at the next position
                typeWriter(at: position + 1)
            }
        } else {
            touchValid = true
            // 재귀함수 종료 시 textCnt를 증가시켜 다음 인덱스로 넘어가게 했습니다.
            textCnt += 1
        }
    }
    
    // 대사 박스 전체 숨길 때 호출
    func textHidden(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            hiddenText = true
        }
    }
    // 대사 박스 전체 보여줄 때 호출
    func textExposed() {
        hiddenText = false
    }
    
    // MARK: - 뷰 를 어떻게 해보려고 ...

    // 베이스로 사용하자
    func CustomTextView(lineModels: DataModels) -> some View {
        HStack {
            VStack(alignment: .leading, spacing: 30) {
                
                Text(lineModels.names[0])
                    .bold()
                    .textPersonBlack()

                GradientLine(startPoint: .leading, endPoint: .trailing, colors: [.gray, .white])
                    
                Text(lineModels.lines[0])
                    .bold()
                    .textTalkBlack()
                
                Spacer()
            }
            .textVStackSize()
            
            Spacer()
        }
        //.background(Color.green)
    }

    // 내레이션 베이스
    func CustomtextBlack(lineModels: DataModels) -> some View {
        HStack {
            VStack(alignment: .leading, spacing: 30) {
                
                Text(lineModels.names[0])
                    .bold()
                    .textPersonWhite()
                
                GradientLine(startPoint: .leading, endPoint: .trailing, colors: [.white, .gray])
                    
                Text(lineModels.lines[0])
                    .bold()
                    .textTalkWhite()
                
                Spacer()
        
            }
            .textVStackSize()
            
            Spacer()
        }
    }
    
    // MARK: - 여기서 4가지 버전으로
    // 흰 배경 왼쪽 대사
    func CustomWhiteLeft() -> some View {
        CustomTextView(lineModels: DataModels())
            .textWhiteLeft()
    }

    // 흰 배경 오른쪽 대사
    func CustomWhiteRight() -> some View {
        CustomTextView(lineModels: DataModels())
            .textWhiteRight()
    }

    // 흰 배경 가운데 대사
    func CustomWhiteCenter() -> some View {
        CustomTextView(lineModels: DataModels())
            .textWhiteCenter()
    }

    // 검은 배경 내래이션
    func CustomBlackCenter() -> some View {
        CustomtextBlack(lineModels: DataModels())
            .textBlack()
    }

}


// MARK: - Previews
struct lineTextView_Previews: PreviewProvider {
    static var previews: some View {
        
        VStack {
            lineTextView(lineModels: DataModels(), personPosition: .none)
            lineTextView(lineModels: DataModels(), personPosition: .left)
            lineTextView(lineModels: DataModels(), personPosition: .right)
            lineTextView(lineModels: DataModels(), personPosition: .center)
            Spacer()
        }
        .background(Image("bg"))
    }
}
