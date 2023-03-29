import SwiftUI
import AVKit

struct OpeningView: View {
    
    @State var audioPlayer: AVAudioPlayer!
    @State private var xVal: CGFloat = 400
    @State private var tag: Int? = 0
    @State private var timer = Timer.publish(every: 0.01, on: .main, in: .common).autoconnect()
    
    var body: some View {
        NavigationView {
            GeometryReader { geo in
                
                ZStack {
                    
                    Image("castle")
                        .resizable()
                        .ignoresSafeArea()
                        .scaledToFill()
                    
                    Image("owl")
                        .resizable()
                        .offset(x: xVal, y: -200)
                        .frame(width: geo.size.width / 4, height: geo.size.height / 4)
                        .transition(.slide)
                        .padding()
                        .onReceive(timer) {_ in
                            xVal += -1
                            if xVal == geo.size.width { xVal = 0 }
                        }
                    VStack {
                        Image("splashlogo")
                            .resizable()
                            .frame(width: geo.size.width / 2 ,height: geo.size.width / 4)
                        // 전환
                        NavigationLink(destination: Chapter1View(), tag: 2, selection: self.$tag){

                        }
                        
                        VStack {
                            Button {
                                self.audioPlayer.stop()
                                self.tag = 2
                                
                            } label: {
                                Image("start")
                                    .resizable()
                                    .frame(width: geo.size.width / 1.7, height: geo.size.height / 11)
                            }
                            .padding()
                            Button {
                                //클릭 액션
                            } label: {
                                Image("settings")
                                    .resizable()
                                    .frame(width: geo.size.width / 3, height: geo.size.height / 15)
                            }
                        }
                        
                    }
                    .onAppear {
                        let sound = Bundle.main.path(forResource: "main", ofType: "mp3")
                        self.audioPlayer = try! AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
                        self.audioPlayer.play()
                    }
                    .padding()
                }
                .frame(width: geo.size.width, height: geo.size.height)
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden()
    }
    
    struct Opening_Previews: PreviewProvider {
        static var previews: some View {
            OpeningView()
                .previewInterfaceOrientation(.landscapeLeft)
        }
    }
}

