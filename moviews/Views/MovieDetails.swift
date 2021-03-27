//
//  MovieDetails.swift
//  moviews
//
//  Created by Anderson Sprenger on 26/03/21.
//

import SwiftUI

struct MovieDetails: View {
    var movie: Movie
    
    var body: some View {
        VStack {
            HStack {
                RoundedCover(cover: movie.image)
                    .frame(width: 150, height: 225, alignment: .bottomLeading)
                VStack(alignment: .leading) {
                    Text(movie.title)
                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                        .fontWeight(.bold)
                    Text(movie.genre)
                        .foregroundColor(.gray)
                        .padding(.vertical)
                    Text("\(Image(systemName: "star")) \(String(movie.rate ?? 0))")
                        .foregroundColor(.gray)
                }
                Spacer()
            }
            HStack {
                Text("Overview")
                    .fontWeight(.bold)
                    .padding(.vertical)
                Spacer()
            }
            
            Text(movie.description)
                .font(.footnote)
                .foregroundColor(.gray)
            Spacer()
        }
        .padding()
    }
}

struct MovieDetails_Previews: PreviewProvider {
    static var previews: some View {
        MovieDetails(movie: hardcodedMovies[0])
            .preferredColorScheme(.dark)
    }
}
