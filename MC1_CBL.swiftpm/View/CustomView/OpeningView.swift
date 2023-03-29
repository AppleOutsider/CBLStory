import SwiftUI
import AVKit

struct OpeningView: View {
    
    @State var audioPlayer: AVAudioPlayer!
    @State private var xVal: CGFloat = 0.0
    @State private var timer = Timer.publish(every: 0.01, on: .main, in: .common).autoconnect()
    
    var body: some View {
        ZStack {
            Image("castle")
            Image("owl")
                .resizable()
                .frame(width: 400, height: 250)
                .aspectRatio(contentMode: .fit)
                .offset(x: xVal, y: -200)
                .transition(.slide)
                .padding()
                .onReceive(timer) {_ in
                    xVal += -2
                    if xVal == 800 { xVal = 0 }
                }
            VStack {
                Image("splashlogo")
                    .resizable()
                    .frame(width: 1000, height: 300)
               
                VStack(spacing : 20) {
                    Button {
                        self.audioPlayer.stop()
                    } label: {
                        Image("start")
                            .resizable()
                            .frame(width: 600, height: 60)
                    }
                    Button {
                        //클릭 액션
                    } label: {
                        Image("settings")
                            .resizable()
                            .frame(width: 400, height: 40)
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
    }
    
    struct Opening_Previews: PreviewProvider {
        static var previews: some View {
            OpeningView()
        }
    }
}

