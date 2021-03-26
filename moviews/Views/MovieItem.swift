//
//  MovieItem.swift
//  moviews
//
//  Created by Anderson Sprenger on 25/03/21.
//

import SwiftUI

struct MovieItem: View {
    var cover: Image
    var title: String
    var description: String
    var rate: Double?
    
    init (of movie: Movie) {
        cover = movie.image
        title = movie.title
        description = movie.description
        rate = movie.rate
    }

    var body: some View {
        HStack {
            RoundedCover(cover: cover)
                .frame(width: 96, height: 144, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            VStack(alignment: .leading) {
                Text(title)
                    .fontWeight(.heavy)
                Text(description)
                    .frame(height: 75, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                Text("⭐️ \(String(rate ?? 0))")
            }
        }
    }
}

struct MovieItem_Previews: PreviewProvider {
    static var previews: some View {
        MovieItem(of: hardcodedMovies[5])
    }
}
