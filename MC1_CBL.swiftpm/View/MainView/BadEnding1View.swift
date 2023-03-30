//
//  SwiftUIView.swift
//  
//
//  Created by doeun kim on 2023/03/28.
//

import SwiftUI

struct BadEnding1View: View {
    @State var tag:Int? = nil
    @State var text : String = ""
    @State var finalText : String = "솔루션 환각에 둘러쌓인 해리포터 일행은 미션 완료도 못하고,\n솔루션 악귀가 되어 완성도 못할 솔루션만 남발하고 다녔습니다."
    @State var isTouchable: Bool = false
    
    
    var body: some View {
        GeometryReader { geo in
            let w = geo.size.width
            let h = geo.size.height
            
            
            NavigationView{
                
                ZStack{
                    Image("bg6")
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
                            .lineSpacing(10)
                            .foregroundColor(.white)
                            .multilineTextAlignment(.center)
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 115, trailing: 0))
                        // 페이지 이동
                        NavigationLink(destination: Select1View(), tag: 1, selection: self.$tag ) {}
                        
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

struct BadEnding1View_Previews: PreviewProvider {
    static var previews: some View {
        BadEnding1View()
    }
}
