//
//  Main.swift
//  moviews
//
//  Created by Anderson Sprenger on 25/03/21.
//

import SwiftUI

struct Main: View {
    var body: some View {
        ScrollView {
            HStack {
                Text("MoviesDB")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
                Spacer()
            }
                .padding()
            NowPlaying()
            Divider()
                .padding()
            PopularMovies()
                .padding()
        }
    }
}

struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main()
    }
}
