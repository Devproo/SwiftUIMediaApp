//
//  AVPlayerManager.swift
//  SwiftUIMediaApp
//
//  Created by ipeerless on 14/09/2023.
//

import Foundation
import SwiftUI
import AVKit

class AVPlayerManager {
    static let  shared = AVPlayerManager()
    var player: AVPlayer
    
    init() {
        player = AVPlayer()
    }
    func play() {
        player.play()
    }
    func pause() {
        player.pause()
    }
    
}
