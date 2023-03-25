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
    @State var text: String = ""
    @State var name: String = ""
    @State var lineModels: DataModels
    @State var touchValid: Bool = true
    @State var hiddenText: Bool = false
    
    // MARK: - body
    var body: some View {
        
        ZStack {
            
            //Color.yellow
            Image("bg")
                .scaledToFit()
                //.opacity(0.4)
            
            Button {
                typeWriter()
                touchValid = false
            } label: {
                ZStack {
                    Rectangle()
                        .foregroundColor(.black)
                        .opacity(0.4)
                        .frame(maxWidth: .infinity, maxHeight: 279)
                        .cornerRadius(43, corners: [.bottomLeft, .bottomRight, .topRight])
                        
                    VStack {
                        Text(name)
                            .bold()
                            .font(.title)
                            .foregroundColor(.white)
                            .offset(x: -600, y: -20)
                            .frame(alignment: .leading)
                            
                       
                        Image("textLine")
                            .frame(width: 279)
                        
                        Text(text)
                            .bold()
                            .font(.title)
                            .foregroundColor(.white)
                            .padding()
                            .frame(height: 130, alignment: .trailing)
                        
                        //Spacer()
                        
                    } // VStack 1
                    .frame(alignment: .leading)
                } // ZStack 2
                .frame(width: 1472, height: 279)
        
            } // label
            .overlay{
                CustomCorner(radius: 43, corners: [.bottomLeft, .bottomRight, .topRight])
                    .stroke(.white, lineWidth: 3)
            }
            .customHidden(hiddenText)
        } // ZStack 1
        .allowsHitTesting(touchValid)
        // 배경 위치 잡을 때
        .offset(y: 370)
        
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
    
    func textHidden(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            hiddenText = true
        }
    }
    
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
