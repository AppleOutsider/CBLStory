//
//  File.swift
//  
//
//  Created by ChoiYujin on 2023/03/29.
//

import Foundation
import AVKit

class EffectSound: ObservableObject {
    
    static let instance = EffectSound()
    var player: AVAudioPlayer?
    
    func playSound(name: String) {
        guard let url = Bundle.main.url(forResource: name, withExtension: ".mp3") else {
            return
            
        }
        do {
            print("play")
            player = try AVAudioPlayer(contentsOf: url)
            player?.numberOfLoops = 1
            player?.play()
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                self.player?.stop()
            }
        } catch let error {
            print("재생하는데 오류가 발생했습니다. \(error.localizedDescription)")
        }
    }
    
}

