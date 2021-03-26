//
//  Main.swift
//  moviews
//
//  Created by Anderson Sprenger on 25/03/21.
//

import SwiftUI

struct Main: View {
    var body: some View {
        NavigationView {
            ScrollView {
                NowPlaying()
                Divider()
                    .padding()
                PopularMovies()
                    .padding()
            }
            .navigationTitle("MovieDB")
        }
    }
}

struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}
