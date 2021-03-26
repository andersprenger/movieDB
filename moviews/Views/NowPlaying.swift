//
//  NowPlaying.swift
//  moviews
//
//  Created by Anderson Sprenger on 25/03/21.
//

import SwiftUI

struct NowPlaying: View {
    var body: some View {
        VStack {
            HStack {
                Text("Now Playing")
                    .fontWeight(.heavy)
                Spacer()
                Text("See All")
            }
            .padding(.horizontal)
            ScrollView(.horizontal) {
                HStack {
                    Spacer()
                    ForEach (0..<5) { index in
                        MovieCover(of: hardcodedMovies[index])
                    }
                }
            }
        }
    }
}

struct NowPlaying_Previews: PreviewProvider {
    static var previews: some View {
        NowPlaying()
    }
}
