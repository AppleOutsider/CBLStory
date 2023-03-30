//
//  SwiftUIView.swift
//
//
//  Created by doeun kim on 2023/03/27.
//

import SwiftUI

struct Select2View: View {

    var body: some View {
        
        GeometryReader { geo in
            let w = geo.size.width
            let h = geo.size.height
        
            NavigationView{
                ZStack{
                    Image("bg9")
                        .resizable()
                        .ignoresSafeArea(.all)
                        .frame(width: w, height: h)
                        .onAppear{
                            ChoiceBgm.instance.playSound()
                        }
                    
                    
                    Rectangle()
                        .fill(.white.opacity(0.0))
                      .frame(width: w - 40, height: h - 20)
                      .border(width: 2.5, edges: [.bottom, .leading, .top, .trailing], color: .white.opacity(0.4))
                    
                    VStack(alignment: .center){
                        
                        Text("어떤 선택을 하시겠습니까?")
                            .font(.customMedium33)
                            .foregroundColor(.white)
                            .padding(EdgeInsets(top: 10, leading: 0, bottom: 58, trailing: 0))
                        
                        Select2BtnView(option: "모두와 함께 나아간다.", selectIdx: 1)
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 45, trailing: 0))
                        
                        Select2BtnView(option: "버릴건 버리고 간다.", selectIdx: 2)
                        
                    }
                    .frame(height: h)
                }
            }
            .navigationViewStyle(StackNavigationViewStyle())
            .navigationBarHidden(true)
            .navigationBarBackButtonHidden()
            .statusBarHidden()

        }
            
    }
}

struct Select2View_Previews: PreviewProvider {
    static var previews: some View {
        Select2View()
    }
}
