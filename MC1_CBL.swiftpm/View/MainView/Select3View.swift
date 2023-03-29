//
//  SwiftUIView.swift
//
//
//  Created by doeun kim on 2023/03/27.
//

import SwiftUI

struct Select3View: View {
    var body: some View {
        
        GeometryReader { geo in
            let w = geo.size.width
            let h = geo.size.height
        
            NavigationView{
                ZStack{
                    Image("bg12")
                        .resizable()
                        .frame(width: w, height: h)
                    
                    
                    Rectangle()
                        .fill(.white.opacity(0.0))
                      .frame(width: w - 40, height: h - 50)
                      .border(width: 2.5, edges: [.bottom, .leading, .top, .trailing], color: .white.opacity(0.3))
                    
                    VStack(alignment: .center){
                        
                        Text("어떤 선택을 하시겠습니까?")
                            .font(.customMedium33)
                            .foregroundColor(.white)
                            .padding(EdgeInsets(top: 10, leading: 0, bottom: 58, trailing: 0))
                        
                        Select3BtnView(option: "어둠에서 벗어나기를 포기한다.", selectIdx: 1)
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 45, trailing: 0))
                        
                        Select3BtnView(option: "어둠속에서 일어나며 하늘을 향해 손을 빧는다.", selectIdx: 2)
                        
                    }
                    .frame(height: h)
                }
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden()
        }
            
    }
}

struct Select3View_Previews: PreviewProvider {
    static var previews: some View {
        Select3View()
    }
}
