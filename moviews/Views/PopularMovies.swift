//
//  PopularMovies.swift
//  moviews
//
//  Created by Anderson Sprenger on 25/03/21.
//

import SwiftUI

struct PopularMovies: View {
    var body: some View {
        VStack {
            HStack {
                Text("Popular Movies")
                    .fontWeight(.heavy)
                Spacer()
            }
            VStack {
                ForEach (5..<hardcodedMovies.count){ index in
                    MovieItem(of: hardcodedMovies[index])
                }
            }
        }
    }
}

struct PopularMovies_Previews: PreviewProvider {
    static var previews: some View {
        PopularMovies()
    }
}
