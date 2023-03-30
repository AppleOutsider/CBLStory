//
//  SwiftUIView 2.swift
//
//
//  Created by doeun kim on 2023/03/27.
//

import SwiftUI

struct Select2BtnView: View {
    
    @State var tag:Int? = nil
    @State var option : String
    @State var selectIdx : Int
    
    //geometry proxy
    var body: some View {
        let screenWidth = UIScreen.main.bounds.size.width
        let screenHeight = UIScreen.main.bounds.size.height
        
        ZStack{
            // 페이지 이동 - 베드 엔딩으로의 이동
            
            //다음 챕터 불러오기
            NavigationLink(destination: Chapter2_3View(), tag: 1, selection: self.$tag ) {
                EmptyView()}.navigationBarHidden(true)
                .labelsHidden()
                .navigationBarBackButtonHidden(true)
            
            // 베드 엔딩 배경 이미지 생각 필요
            NavigationLink(destination: BadEnding2View(), tag: 2, selection: self.$tag ) {
                EmptyView()}.navigationBarHidden(true)
                .labelsHidden()
                .navigationBarBackButtonHidden(true)
            
            //선택 버튼
            Button(
                action: {
                    ChoiceBgm.instance.stopSound()

                    if(selectIdx == 1){
                        self.tag = 1;
                        // 다음 챕터로 이동하기 위해 tag = 1로 설정하여 tag == 1에 해당하는 navigation link 동작
                    }
                    else{
                        self.tag = 2;
                    }
                }
            ){
                ZStack{
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
                        .frame(width: screenWidth*0.59, height: screenHeight*0.09)
                    
                }
            }
            
        }
        }
}

struct Select2BtnView_Previews: PreviewProvider {
    static var previews: some View {
        Select2BtnView(option: "솔루션을 생각하지 않는다.", selectIdx: 1)
    }
}
