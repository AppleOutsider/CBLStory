//
//  File.swift
//  
//
//  Created by ChoiYujin on 2023/03/29.
//

import Foundation
import AVKit

class Chapter2_3Bgm: ObservableObject {
    
    static let instance = Chapter2_3Bgm()
    var player: AVAudioPlayer?
    
    func playSound() {
        
        guard let url = Bundle.main.url(forResource: "mc1_bgm_cave2", withExtension: ".mp3") else { return }
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.numberOfLoops = 2
            player?.play()
        } catch let error {
            print("재생하는데 오류가 발생했습니다. \(error.localizedDescription)")
        }
    }
    func stopSound() {
        guard let url = Bundle.main.url(forResource: "mc1_bgm_cave2", withExtension: ".mp3") else { return }
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.stop()
        } catch let error {
            print("재생하는데 오류가 발생했습니다. \(error.localizedDescription)")
        }
    }
}


