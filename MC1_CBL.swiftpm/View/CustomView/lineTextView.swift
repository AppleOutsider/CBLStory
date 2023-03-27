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
    @State var lineModels: DataModels
    @State var touchValid: Bool = true
    @State var hiddenText: Bool = false
    // bool 값으로 배경 색 확인 변경
    // 3항 연산자로 대사 색 다 설정
    // enum or switch 로 상황에 따라 대사 박스 모양 변경
    // geometryproxy 값 받아서 가변적으로 사이즈 조정
    // MARK: - body
    var body: some View {
        
        HStack(alignment: .center) {
            
            ZStack {
                
                //Color.yellow
                Image("bg")
                    .scaledToFit()
                    //.opacity(0.4)
                
                Button {
                    typeWriter()
                    touchValid = false
                } label: {
                       
                        
                        HStack {
                            VStack(alignment: .leading, spacing: 30) {
                                // 발언자
                                Text(name)
                                    .bold()
                                    .font(.title)
                                    .foregroundColor(.white)
                                    .padding(.top , 30)
                                
                                    
                                // 해나가 그려준 선 이미지로 넣어버리기.....(수정완료~)
                                GradientLine(startPoint: .leading, endPoint: .trailing, colors: [.white, .gray])
                                    
                                // 대사
                                Text(text)
                                    .bold()
                                    .font(.title)
                                    .foregroundColor(.white)
                                
                                Spacer()
                                
                            } // VStack 1
                            .frame(width: UIScreen.main.bounds.size.width - 40, height: 279)
                            .padding()
                            .padding(.leading, 100)
                            Spacer()
                        }
                        .background(Color("textbg"))
                        .frame(maxWidth: 1472, maxHeight: 279)
                        .cornerRadius(43, corners: [.bottomLeft, .bottomRight, .topRight])
                        
            
                } // label
                .frame(width: 1472, height: 279, alignment: .leading)
                .overlay{
                    CustomCorner(radius: 43, corners: [.bottomLeft, .bottomRight, .topRight])
                        .stroke(.white, lineWidth: 3)
                }
                .customHidden(hiddenText)
            } // ZStack 1
            // 대사 중에 터지 불가
            .allowsHitTesting(touchValid)
            // 배경 위치 잡을 때
        .offset(y: 370)
        }
        
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

} // View

// MARK: - Previews
struct lineTextView_Previews: PreviewProvider {
    static var previews: some View {
        lineTextView(lineModels: DataModels())
    }
}
