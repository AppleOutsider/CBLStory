//
//  SwiftUIView.swift
//
//
//  Created by doeun kim on 2023/03/28.
//

import SwiftUI

struct BadEnding2View: View {
    @State var tag:Int? = nil
    @State var text : String = ""
    @State var finalText : String = "해리, 론, 헤르미온느는 계속 싸우다가 결국에는 덤블도어 교수님께 곤장을 맞고, \n학생장학금 서류도 불태워져, 종신노예가 되어 \"씨퐈\"를 지키는 경비병이 되었다."
    @State var isTouchable: Bool = false
    
    
    var body: some View {
        GeometryReader { geo in
            let w = geo.size.width
            let h = geo.size.height
            
            
            NavigationView{
                
                ZStack{
                    Image("bg10")
                        .resizable()
                        .frame(width: w, height: h)
                    
                    Rectangle()
                        .fill(.white.opacity(0.0))
                      .frame(width: w - 40, height: h - 50)
                      .border(width: 1.0, edges: [.bottom, .leading, .top, .trailing], color: .white)
                    
                    VStack{
//                        Text("Fail..")
//                            .onAppear {
//                                isTouchable = false
//                                typeWriter2()
//                            }
                        
//                            .font(.harryRegular200)
//                            .foregroundColor(.white)
//                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 58, trailing: 0))
                        
                        Image("fail")
                            .resizable()
                            .scaledToFit()
                            .frame(height: h * 0.2)
                            .onAppear {
                                isTouchable = false
                                typeWriter2()
                            }
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 58, trailing: 0))
                        
                        Text(text)
                            .font(.customMedium33)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 115, trailing: 0))
                        
                        // 페이지 이동
                        NavigationLink(destination: Select2View(), tag: 1, selection: self.$tag ) {}
                        
                        if(isTouchable){
                            Button(
                                action: {
                                    self.tag = 1;
                                }
                            ){
                                ZStack{
                                    RoundedRectangle(cornerRadius: 20)
                                        .fill(
                                            LinearGradient(
                                                gradient:Gradient(
                                                    colors: [Color.white.opacity(0.75), Color.white.opacity(0.5)]),
                                                    startPoint: .topLeading,
                                                    endPoint: .bottomTrailing
                                                )
                                            )
                                        .frame(width: w * 0.37, height: h*0.08)
                                        .overlay{
                                            CustomCorner(radius: 20, corners: [.topLeft, .topRight, .bottomLeft, .bottomRight])
                                                .stroke(.white, lineWidth: 2)
                                        }
                                        .shadow(color: .black.opacity(0.59), radius: 20, x: 0, y: 2)
                                    
                                    Text("다시 선택하기")
                                        .foregroundColor(.black)
                                        .font(.customMedium27)
                                    
                                }
                            
                            }
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 36, trailing: 0))
                            
                            //선택 버튼
                            Button(
                                action: {
                                    self.tag = 2;
                                }
                            ){
                                ZStack{
                                    RoundedRectangle(cornerRadius: 20)
                                        .fill(Color.black)
                                        .opacity(0.5)
                                        .frame(width: w * 0.37, height: h*0.08)
                                        .overlay{
                                            CustomCorner(radius: 20, corners: [.topLeft, .topRight, .bottomLeft, .bottomRight])
                                                    .stroke(.white.opacity(0.5), lineWidth: 2)
                                            }
                                            .shadow(color: .black.opacity(0.59), radius: 20, x: 0, y: 2)
                                        
                                    Text("게임 종료하기")
                                        .foregroundColor(.white.opacity(0.75))
                                        .font(.customMedium27)
                                        
                                }
                                
                            }
                            
                            
                        }
                    }
                    
                }
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden()
        }
    }
    
    func typeWriter2(at position: Int = 0) {
        if position == 0 {
            text = ""
        }
        
        if position < finalText.count {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.05) {
                text.append(finalText[position])
                typeWriter2(at: position + 1)
            }
        } else {
            isTouchable = true
        }
    }
}

struct BadEnding2View_Previews: PreviewProvider {
    static var previews: some View {
        BadEnding2View()
    }
}
