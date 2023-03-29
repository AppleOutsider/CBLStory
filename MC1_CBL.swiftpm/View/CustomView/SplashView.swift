//
//  SwiftUIView.swift
//  
//
//  Created by YU WONGEUN on 2023/03/29.
//

import SwiftUI

struct SplashView: View {
    @State var loading: Double = 0
    let timer = Timer.publish(every: 0.15, on: .main, in: .common).autoconnect()
    // MARK: - body
    var body: some View {
        // progress bar 에 따라 투명도 없어지고 배경사진의 크기 커지게
        GeometryReader { geo in
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
                
                VStack {
                    
                    Spacer()
                    
                    // 해리포터 Logo
                    Image("splashLogo")
                        .resizable()
                        .frame(width: geo.size.width / 2, height: geo.size.height / 3)
                    
                    Spacer()
                    
                    // 로딩바
                    ProgressView(value: loading, total: 100)
                        .progressViewStyle(LinearProgressViewStyle(tint: .yellow))
                        .onReceive(timer) { _ in
                            if loading < 100 {
                                loading += (Double.random(in: 1...3.5))
                            } else {
                                loading = 0
                            }
                        }
                    
                    Spacer()
                }
            }
            .frame(width:geo.size.width , height:geo.size.height)
        }
    }
}


struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        SplashView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
