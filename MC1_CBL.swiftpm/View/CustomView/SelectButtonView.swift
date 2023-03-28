//
//  SwiftUIView 2.swift
//  
//
//  Created by doeun kim on 2023/03/27.
//

import SwiftUI

struct SelectBtnView: View {
    
    @State var tag:Int? = nil
    @State var option : String
    
    //geometry proxy
    var body: some View {
        let screenWidth = UIScreen.main.bounds.size.width
        let screenHeight = UIScreen.main.bounds.size.height
        
        // 궁금한 부분 action에 해당하는 함수를 매개 변수로 넘겨주지 않고 buttom view만 그리고 action 처리는 별도의 공간에서 진행하는 것이 좋을지
        //if 문으로 선택 양상 index를 구분 받아 특정 동작을 하도록 처리하는게 더 좋을지
        ZStack{
            // 페이지 이동
//            NavigationLink(destination: lineTextView(lineModels: DataModels(), personPosition: .none), tag: 1, selection: self.$tag ) {
//                      EmptyView()
//            }
            
            //선택 버튼
            Button(
                action: {
                    self.tag = 1;
                }
            ){
                ZStack{
                    // 높이와 너비를 기기별 비율로 받아오는 것이 좋을지 혹은 특정 mac에서만 진행한다는 가정 하에 고정 값으로 주는 것이 좋을지
                    RoundedRectangle(cornerRadius: 20)
                        .fill(Color.black)
                        .opacity(0.5)
                        .frame(width: screenWidth*0.59, height: screenHeight*0.09)
                        .overlay{
                            CustomCorner(radius: 20, corners: [.topLeft, .topRight, .bottomLeft, .bottomRight])
                                .stroke(.white.opacity(0.5), lineWidth: 2)
                        }
                        .shadow(color: .black.opacity(0.59), radius: 20, x: 0, y: 2)
                    
                    Text("\(option)")
                        .foregroundColor(.white)
                        .font(.customMedium27)
                    
                }
            }
            
        }
        }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SelectBtnView(option: "솔루션을 생각하지 않는다.")
    }
}
