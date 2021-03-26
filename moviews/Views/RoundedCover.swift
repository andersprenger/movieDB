//
//  RoundedCover.swift
//  moviews
//
//  Created by Anderson Sprenger on 25/03/21.
//

import SwiftUI

struct RoundedCover: View {
    var cover: Image //aspect 6:9
    
    var body: some View {
        VStack {
            cover
                .resizable()
                .clipShape(RoundedRectangle(cornerRadius: 18.0))
        }
    }
}

struct RoundedCover_Previews: PreviewProvider {
    static var previews: some View {
        RoundedCover(cover: Image("Tom & Jerry"))
    }
}
