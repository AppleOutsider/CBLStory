//
//  SwiftUIView.swift
//  
//
//  Created by doeun kim on 2023/03/27.
//

import SwiftUI

struct SelectView: View {
    @State var bgImage : String
    @State var option1 : String
    @State var option2 : String

    var body: some View {
        
        let screenWidth = UIScreen.main.bounds.size.width
        let screenHeight = UIScreen.main.bounds.size.height
        
        NavigationView{
            ZStack{
                Image("\(bgImage)")
                    .scaledToFit()
                
                
                Rectangle()
                    .fill(.white.opacity(0.0))
                  .frame(width: screenWidth - 40, height: screenHeight - 40)
                  .border(width: 1.0, edges: [.bottom, .leading, .top, .trailing], color: .white)
                
                VStack(alignment: .center){
                    
                    Text("어떤 선택을 하시겠습니까?")
                        .font(.customMedium33)
                        .foregroundColor(.white)
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 58, trailing: 0))
                    
                
                    SelectBtnView(option: "\(option1)")
                        .padding(EdgeInsets(top: 0, leading: 0, bottom: 45, trailing: 0))
                    
                    SelectBtnView(option: "\(option2)")
                    
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct SelectView_Previews: PreviewProvider {
    static var previews: some View {
        SelectView(bgImage: "bg", option1: "솔루션을 생각하지 않는다.", option2: "계속 솔루션만 생각한다")
    }
}
