//
//  ContentView.swift
//  SwiftUIMediaApp
//
//  Created by ipeerless on 14/09/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VideoPlayerView(videoURL:URL(string: "https://www.youtube.com/watch?v=nrw008L05bg")  )
    }
}

#Preview {
    ContentView()
}
