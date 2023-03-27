//
//  SwiftUIView.swift
//  
//
//  Created by YU WONGEUN on 2023/03/26.
//

import SwiftUI

struct LumosAnimation: View {
    @State private var shine = false

    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            Image(systemName: "bolt.circle.fill")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundColor(shine ? .yellow : .white)
                .animation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: true))
                .onAppear {
                    self.shine = true
                }
        }
    }
}

struct LumosAnimation_Previews: PreviewProvider {
    static var previews: some View {
        LumosAnimation()
    }
}


