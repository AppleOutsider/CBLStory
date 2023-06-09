//
//  File.swift
//
//
//  Created by ChoiYujin on 2023/03/29.
//

import Foundation
import AVKit

class ChoiceBgm: ObservableObject {
    
    static let instance = ChoiceBgm()
    var player: AVAudioPlayer?
    
    func playSound() {
        
        guard let url = Bundle.main.url(forResource: "mc1_bgm_choice", withExtension: ".mp3") else { return }
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
        } catch let error {
            print("재생하는데 오류가 발생했습니다. \(error.localizedDescription)")
        }
    }
    func stopSound() {
        guard let url = Bundle.main.url(forResource: "mc1_bgm_choice", withExtension: ".mp3") else { return }
        do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.stop()
        } catch let error {
            print("재생하는데 오류가 발생했습니다. \(error.localizedDescription)")
        }
    }
}


