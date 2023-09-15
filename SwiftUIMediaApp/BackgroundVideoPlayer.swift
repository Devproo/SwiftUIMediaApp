//
//  BackgroundVideoPlayer.swift
//  SwiftUIMediaApp
//
//  Created by ipeerless on 14/09/2023.
//

import Foundation
import SwiftUI
import AVKit

struct BackgroundVideoPlayer: UIViewRepresentable {
    var player: AVPlayer

    func makeUIView(context: Context) -> UIView {
        let hostingView = UIView()
        let playerLayer = AVPlayerLayer(player: player)
        playerLayer.videoGravity = .resizeAspectFill
        playerLayer.frame = hostingView.bounds
        hostingView.layer.addSublayer(playerLayer)
        return hostingView
    }

    func updateUIView(_ uiView: UIView, context: Context) {
        if let playerLayer = uiView.layer.sublayers?.first as? AVPlayerLayer {
            playerLayer.frame = uiView.bounds
        }
    }
}

