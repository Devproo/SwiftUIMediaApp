//
//  VideoPlayerView.swift
//  SwiftUIMediaApp
//
//  Created by ipeerless on 14/09/2023.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    private let videoURL: URL?
    init(videoURL: URL?) {
        self.videoURL = Bundle.main.url(forResource: "https://www.youtube.com/watch?v=nrw008L05bg", withExtension: "MP4")
    }
    var body: some View {
        
        if let videoURL = videoURL {
            return AnyView (
            
            VideoPlayer(player: AVPlayer(url: videoURL)) {
                Text("your video couldn't be loaded")
                    .font(.title)
                    .foregroundStyle(.white)
            }
            .onAppear {
                AVPlayerManager.shared.play()
            }
            .onDisappear {
                AVPlayerManager.shared.pause()
            }
            .background(BackgroundVideoPlayer(player: AVPlayerManager.shared.player))
    
            
            )
            
        } else {
            return AnyView(
                Text("Video not found")
                    .foregroundColor(.white)
                    .font(.title)
                  
            )
            
        }
    }
}



#Preview {
    VideoPlayerView(videoURL:URL(string: "https://www.youtube.com/watch?v=nrw008L05bg")  )
}
