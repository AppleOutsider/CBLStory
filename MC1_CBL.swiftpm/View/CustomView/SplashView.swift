//
//  SwiftUIView.swift
//
//
//  Created by YU WONGEUN on 2023/03/29.
//

import SwiftUI


struct SplashView: View {
    @State var isTransit: Bool = false
    @State var isFirst: Bool = false
    @State var loading: Double = 0
    @State private var tag: Int? = 0
    @State private var xVal: CGFloat = -600
    @State private var timer = Timer.publish(every: 0.15, on: .main, in: .common).autoconnect()
    @State private var boungtimer = Timer.publish(every: 0.0045, on: .main, in: .common).autoconnect()
    
    // MARK: - body
    var body: some View {
        // progress bar 에 따라 투명도 없어지고 배경사진의 크기 커지게
        GeometryReader { geo in
            
            NavigationView {
                
                ZStack {
                    
                    Image("castle")
                        .resizable()
                        .scaledToFill()
                        .ignoresSafeArea()
                        .frame(width: geo.size.width, height: geo.size.height)
                    
                    VStack {
                        
                        HStack {
                            Image("cloud1")
                                .resizable()
                                .padding(.trailing, 50)
                                .padding(.top, 30)
                            
                            //Spacer()
                            Image("cloud2")
                                .resizable()
                                .padding(.top, -250)
                                .padding(.leading, -300)
                            
                        }
                        Spacer()
                        
                        HStack {
                            Image("cloud3")
                                .resizable()
                                .padding(.bottom, -300)
                            
                            Spacer()
                            
                            Image("cloud4")
                                .resizable()
                                .padding(.trailing, -100)
                                .padding(.bottom, 100)
                        }
                        Spacer()
                    }
                    
                    NavigationLink(destination: OpeningView(), tag: 1, selection: self.$tag){
                        
                    }
                    
                    VStack {
                        
                        Spacer()
                        
                        // 해리포터 Logo
                        Image("splashlogo")
                            .resizable()
                            .frame(width: geo.size.width / 2, height: geo.size.height / 3)
                        
                        Spacer()
                        
                        
                        // 로딩바
                        ProgressView(value: loading, total: 100)
                            .progressViewStyle(LinearProgressViewStyle(tint: .yellow))
                            .onReceive(timer) { _ in
                                if loading < 100 {
                                    loading += 2.5
                                }
                                else {
                                    self.tag = 1
                                    //                                        if isFirst == false {
                                    //                                            isTransit.toggle()
                                    //                                            isFirst = true
                                    //                                        }
                                    
                                }
                            }
                        
                        Spacer()
                    }
                    
                    Image("owl")
                        .resizable()
                        .offset(x: xVal, y: geo.size.height / xVal + 200)
                        .frame(width: geo.size.width / 6, height: geo.size.height / 6)
                        .transition(.slide)
                        .padding()
                        .onReceive(boungtimer) {_ in
                            xVal += 1
                            //if xVal == geo.size.width { xVal = 0 }
                        }
                    
                }
                .frame(width:geo.size.width , height:geo.size.height)
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden()
//            .fullScreenCover(isPresented: $isTransit) {
//                OpeningView()
//            }
        }
        
    }
}


struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

