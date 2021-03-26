//
//  ModelData.swift
//  moviews
//
//  Created by Anderson Sprenger on 25/03/21.
//

import Foundation

var hardcodedMovies: [Movie] = initHardcodedMovies()

func initHardcodedMovies () -> [Movie]{
    var tmp: [Movie] = []
    tmp += [Movie(
        title: "Another Round",
        description: "Long ago, in the fantasy world of Kumandra, humans and dragons lived together in harmony. But when an evil force threatened the land, the dragons sacrificed themselves to save humanity. Now, 500 years later, that same evil has returned and it’s up to a lone warrior, Raya, to track down the legendary last dragon to restore the fractured land and its divided people.",
        year: 2021,
        genre: "Animation, Adventure, Fantasy, Family, Action",
        rate: 8.4,
        duration: "1h 47m"
    )]
    
    tmp += [Movie(
        title: "Raya and the Last Dragon",
        description: "Four high school teachers launch a drinking experiment: upholding a constant low level of intoxication.",
        year: 2020,
        genre: "Comedy, Drama",
        rate: 7.8,
        duration: "1h 57m"
    )]
    
    tmp += [Movie(
        title: "Godzilla vs. Kong",
        description: "In a time when monsters walk the Earth, humanity’s fight for its future sets Godzilla and Kong on a collision course that will see the two most powerful forces of nature on the planet collide in a spectacular battle for the ages.",
        year: 2021,
        genre: "Action, Science Fiction",
        rate: 7.5,
        duration: "1h 53m"
    )]
    
    tmp += [Movie(
        title: "Tom & Jerry",
        description: "Tom the cat and Jerry the mouse get kicked out of their home and relocate to a fancy New York hotel, where a scrappy employee named Kayla will lose her job if she can’t evict Jerry before a high-class wedding at the hotel. Her solution? Hiring Tom to get rid of the pesky mouse.",
        year: 2021,
        genre: "Action, Comedy, Family, Animation",
        rate: 7.4,
        duration: "1h 41m"
    )]
    
    tmp += [Movie(
        title: "The Croods - A New Age",
        description: "Searching for a safer habitat, the prehistoric Crood family discovers an idyllic, walled-in paradise that meets all of its needs. Unfortunately, they must also learn to live with the Bettermans -- a family that's a couple of steps above the Croods on the evolutionary ladder. As tensions between the new neighbors start to rise, a new threat soon propels both clans on an epic adventure that forces them to embrace their differences, draw strength from one another, and survive together.",
        year: 2020,
        genre: "Family, Fantasy, Animation, Comedy",
        rate: 7.5,
        duration: "1h 35m"
    )]
    
    tmp += [Movie(
        title: "Monster Hunter",
        description: "A portal transports Cpt. Artemis and an elite unit of soldiers to a strange world where powerful monsters rule with deadly ferocity. Faced with relentless danger, the team encounters a mysterious hunter who may be their only hope to find a way home.",
        year: 2020,
        genre: "Fantasy, Action, Adventure",
        rate: 7.2,
        duration: "1h 44m"
    )]
    
    tmp += [Movie(
        title: "Nomadland",
        description: "A woman in her sixties embarks on a journey through the western United States after losing everything in the Great Recession, living as a van-dwelling modern-day nomad.",
        year: 2020,
        genre: "Drama, Western",
        rate: 7.5,
        duration: "1h 48m"
    )]
    
    tmp += [Movie(
        title: "Chaos Walking",
        description: "Two unlikely companions embark on a perilous adventure through the badlands of an unexplored planet as they try to escape a dangerous and disorienting reality, where all inner thoughts are seen and heard by everyone.",
        year: 2021,
        genre: "Science Fiction, Action, Adventure, Thriller",
        rate: 7.3,
        duration: "1h 49m"
    )]
    
    tmp += [Movie(
        title: "The Marksman",
        description: "Jim Hanson’s quiet life is suddenly disturbed by two people crossing the US/Mexico border – a woman and her young son – desperate to flee a Mexican cartel. After a shootout leaves the mother dead, Jim becomes the boy’s reluctant defender. He embraces his role as Miguel’s protector and will stop at nothing to get him to safety, as they go on the run from the relentless assassins.",
        year: 2021,
        genre: "Action, Thriller, Crime",
        rate: 6.2,
        duration: "1h 48m"
    )]
    
    tmp += [Movie(
        title: "The Seventh Day",
        description: "A renowned exorcist teams up with a rookie priest for his first day of training. As they plunge deeper into hell on earth, the lines between good and evil blur, and their own demons emerge.",
        year: 2021,
        genre: "Horror",
        rate: 4.3,
        duration: "1h 27m"
    )]
    
    tmp += [Movie(
        title: "Nobody",
        description: "Hutch Mansell, a suburban dad, overlooked husband, nothing neighbor — a nobody When two thieves break into his home one night, Hutch's unknown long-simmering rage is ignited and propels him on a brutal path that will uncover dark secrets he fought to leave behind.",
        year: 2021,
        genre: "Action, Thriller, Crime",
        rate: 8.1,
        duration: ""
    )]
    
    tmp += [Movie(
        title: "Promising Young Woman",
        description: "A young woman haunted by a tragedy in her past takes revenge on the predatory men unlucky enough to cross her path.",
        year: 2020,
        genre: "Thriller, Crime, Drama",
        rate: 7.8,
        duration: "1h 53m"
    )]

    return tmp
}

var movies: [Movie] = load("_MovieDB")

func load<GenericType: Decodable>(_ filename: String) -> GenericType {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("ACouldn't find \(filename) in main bundle.")
    }
    
    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("BCouldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(GenericType.self, from: data)
    } catch {
        fatalError("CCouldn't parse \(filename) as \(GenericType.self):\n\(error)")
    }
}
