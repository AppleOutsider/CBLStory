//
//  SwiftUIView.swift
//
//
//  Created by doeun kim on 2023/03/28.
//

import SwiftUI

struct BadEnding3View: View {
    @State var tag:Int? = nil
    @State var text : String = ""
    @State var finalText : String = "해리포터, 헤르미온느, 론위즐리는 호그와트에 입학하기 전으로 회귀하며, \n마법학교가 아닌 평범한 학교에 입학하고 입시경쟁에 치여살며, 일과 야근에 쩔어사는\n직장인이 되고, 늙고 병들어 쓸쓸하게 살아가는 인생이 된다."
    @State var isTouchable: Bool = false
    
    
    var body: some View {
        GeometryReader { geo in
            let w = geo.size.width
            let h = geo.size.height
            
            
            NavigationView{
                
                ZStack{
                    Image("bg13")
                        .resizable()
                        .ignoresSafeArea(.all)
                        .frame(width: w, height: h)
                    
                    Rectangle()
                        .fill(.white.opacity(0.0))
                      .frame(width: w - 40, height: h - 50)
                      .border(width: 2.5, edges: [.bottom, .leading, .top, .trailing], color: .white.opacity(0.4))
                    
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
                            .scaledToFit()
                            .frame(height: h * 0.2)
                            .onAppear {
                                isTouchable = false
                                typeWriter2()
                            }
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 58, trailing: 0))
                        
                        Text(text)
                            .font(.customMedium33)
                            .lineSpacing(10)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 115, trailing: 0))
                        
                        // 페이지 이동
                        NavigationLink(destination: Select3View(), tag: 1, selection: self.$tag ) {}
                        
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

struct BadEnding3View_Previews: PreviewProvider {
    static var previews: some View {
        BadEnding3View()
    }
}
