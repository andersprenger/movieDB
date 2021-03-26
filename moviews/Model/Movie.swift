//
//  Movie.swift
//  moviews
//
//  Created by Anderson Sprenger on 25/03/21.
//

import Foundation
import SwiftUI

struct Movie: Hashable, Codable {
    var title: String
    var description: String
    var year: Int
    var genre: String
    var rate: Double?
    var duration: String
    
    var image: Image {
        Image(self.title)
    }
}
