import SwiftUI
import AVKit



struct EndingView: View {
    
    @State private var animationStart = false
    @State private var animationEnd = false
    @State var isTransit: Bool = false
    private let startAnimationDuration = 3.0
    
    var body: some View {
        ZStack{
            Image("tim2")
                .resizable()
                .aspectRatio(contentMode:.fill)
                .ignoresSafeArea()

            ScrollView {
                Text ("""

Joy
Eugene
San
Hannah
Ryu
Whaeun

AND

Saya
Jason


""")
                .fontWeight(.bold)
                .font(.system(size: 80))
                .foregroundColor (.black)
                .multilineTextAlignment(.center)
                .lineSpacing (10)
                .padding ()
                .rotation3DEffect(.degrees (60), axis: (x: 0, y: 0, z: 0))
                .frame (width: 1000)
                .offset(y: animationStart ? -500 : 0)
                .animation (Animation.linear(duration: startAnimationDuration),value: animationStart)
                .onAppear() {
                    self.animationStart.toggle()
                    DispatchQueue.main.asyncAfter(deadline: .now() + self.startAnimationDuration) {
                        self.animationEnd.toggle()
                        isTransit.toggle()
                    }
                }
            }
            .padding(.vertical, 30)
            .allowsHitTesting(animationEnd)
            .fullScreenCover(isPresented: $isTransit) {
                ContentView()
            }
        }
    }
}

struct ContentView: View {
    
    @State private var showDetails = false
    @State var audioPlayer: AVAudioPlayer!
    @State var isEasteregg1: Bool = false
    @State var isEasteregg2: Bool = false
    @State var isEasteregg3: Bool = false
    @State var isEasteregg4: Bool = false
    @State var isEasteregg5: Bool = false
    @State var isEasteregg6: Bool = false
    @State var isEasteregg7: Bool = false
    @State var isEasteregg8: Bool = false
    
    private let startAnimationDuration = 11.0
    
    var body: some View {
        ZStack(alignment: .center){
            //            배경 이미지
            Image("ending")
                .resizable()
                .aspectRatio(contentMode:.fill)
                .ignoresSafeArea()
            
            //            오디오
                .onAppear {
                    let sound = Bundle.main.path(forResource: "mc1_bgm_harrypotter", ofType: "mp3")
                    self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
                    self.audioPlayer.play()
                }
            
            
                
            
            
            VStack(alignment: .center){
                
                
                Image("joyffindor")
                    .resizable()
                    .frame(width: 600, height: 600)
                    .aspectRatio(contentMode:.fit)
                

                //                디 엔드 이미지
                Image("theend")
                    .resizable()
                    .frame(width: 1000, height: 300)
                    .aspectRatio(contentMode:.fill)
                
                //                다시하시겠습니까 이미지
                Button {
                    print("bye")
                } label: {
                    Image("again")
                        .resizable()
                        .frame(width: 240, height: 40)
                        .aspectRatio(contentMode:.fit)
                }
                
                
                
                //                스크롤뷰
                
                
            }
            
            
            //            이스터에그 버튼
            VStack{
                Spacer()
                HStack{
                    Spacer()
                    Button {
                        isEasteregg1.toggle()
                    } label: {
                        Image("joy")
                            .resizable()
                            .frame(width: 300, height: 300)
                            .aspectRatio(contentMode:.fit)
                            .opacity(isEasteregg1 ? 1 : 0.01)
                    }
                    Spacer()
                    Button {
                        isEasteregg2.toggle()
                    } label: {
                        Image("whaeun")
                            .resizable()
                            .frame(width: 300, height: 300)
                            .aspectRatio(contentMode:.fit)
                            .opacity(isEasteregg2 ? 1 : 0.01)
                    }
                    Spacer()
                    Button {
                        isEasteregg3.toggle()
                    } label: {
                        Image("ryu")
                            .resizable()
                            .frame(width: 300, height: 300)
                            .aspectRatio(contentMode:.fit)
                            .opacity(isEasteregg3 ? 1 : 0.01)
                    }
                    Spacer()
                }
                Spacer()
                HStack{
                    Spacer()
                    Button {
                        isEasteregg4.toggle()
                    } label: {
                        Image("jason")
                            .resizable()
                            .frame(width: 300, height: 300)
                            .aspectRatio(contentMode:.fit)
                            .opacity(isEasteregg4 ? 1 : 0.01)
                    }
                    Spacer()
                    Button {
                        isEasteregg5.toggle()
                    } label: {
                        Image("saya")
                            .resizable()
                            .frame(width: 300, height: 300)
                            .aspectRatio(contentMode:.fit)
                            .opacity(isEasteregg5 ? 1 : 0.01)
                    }
                    Spacer()
                }
                Spacer()
                HStack{
                    Spacer()
                    Button {
                        isEasteregg6.toggle()
                    } label: {
                        Image("eugene")
                            .resizable()
                            .frame(width: 300, height: 300)
                            .aspectRatio(contentMode:.fit)
                            .opacity(isEasteregg6 ? 1 : 0.01)
                    }
                    Spacer()
                    Button {
                        isEasteregg7.toggle()
                    } label: {
                        Image("san")
                            .resizable()
                            .frame(width: 300, height: 300)
                            .aspectRatio(contentMode:.fit)
                            .opacity(isEasteregg7 ? 1 : 0.01)
                    }
                    Spacer()
                    Button {
                        isEasteregg8.toggle()
                    } label: {
                        Image("hannah")
                            .resizable()
                            .frame(width: 300, height: 300)
                            .aspectRatio(contentMode:.fit)
                            .opacity(isEasteregg8 ? 1 : 0.01)
                    }
                    Spacer()
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        ContentView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}

struct EndingView_Previews: PreviewProvider {
    static var previews: some View {
        
        EndingView()
            .previewInterfaceOrientation(.landscapeLeft)
    }
}
