//
//  MovieCover.swift
//  moviews
//
//  Created by Anderson Sprenger on 25/03/21.
//

import SwiftUI

struct MovieCover: View {
    var cover: Image
    var title: String
    var rate: Double?
    
    init(of movie: Movie) {
        cover = movie.image
        title = movie.title
        rate = movie.rate
    }
    
    var body: some View {
        VStack (alignment: .leading) {
            RoundedCover(cover: cover)
                .frame(width: 180, height: 270)
            Text(title)
                .fontWeight(.bold)
                .frame(width: 180, height: 20, alignment: .bottomLeading)
            Text("\(Image(systemName: "star")) \(String(rate ?? 0))")
        }
        .foregroundColor(Color("dynamic text collor"))
    }
}

struct MovieCover_Previews: PreviewProvider {
    static var previews: some View {
        MovieCover(of: hardcodedMovies[0])
    }
}
