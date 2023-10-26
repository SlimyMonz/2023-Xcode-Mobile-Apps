//
//  movieDB.swift
//  Hocker-P2
//
//  Created by Harry Hocker on 1/23/23.
//

import Foundation

let apiLink = "https://api.themoviedb.org/3/movie/now_playing?api_key=a07e22bc18f5cb106bfe4cc1f83ad8ed"
let api_key = "api_key=a07e22bc18f5cb106bfe4cc1f83ad8ed"

// imageBase + poster_path to get image; same for backdrop_path
let imageBase = "https://image.tmdb.org/t/p/w1280"


struct movieJSON: Identifiable {
    let id: UUID?
    let title: String?
    let overview: String?
    let poster_path: String?
    let backdrop_path: String?
    
}

extension movieJSON {
    
    static var exampleMovies: [movieJSON] = [
        movieJSON(id: UUID(), title: "Puss in Boots: The Last Wish",
                  overview: "Puss in Boots discovers that his passion for adventure has taken its toll: He has burned through eight of his nine lives, leaving him with only one life left. Puss sets out on an epic journey to find the mythical Last Wish and restore his nine lives.",
                  poster_path: imageBase + "/kuf6dutpsT0vSVehic3EZIqkOBt.jpg",
                  backdrop_path: imageBase + "/r9PkFnRUIthgBp2JZZzD380MWZy.jpg"),
        movieJSON(id: UUID(), title: "M3GAN",
                  overview: "A brilliant toy company roboticist uses artificial intelligence to develop M3GAN, a life-like doll programmed to emotionally bond with her newly orphaned niece. But when the doll's programming works too well, she becomes overprotective of her new friend with terrifying results.",
                  poster_path: imageBase + "/7CNCv9uhqdwK7Fv4bR4nmDysnd9.jpg",
                  backdrop_path: imageBase + "/q2fY4kMXKoGv4CQf310MCxpXlRI.jpg"),
        movieJSON(id: UUID(), title: "Avatar: The Way of Water",
                  overview: "Set more than a decade after the events of the first film, learn the story of the Sully family (Jake, Neytiri, and their kids), the trouble that follows them, the lengths they go to keep each other safe, the battles they fight to stay alive, and the tragedies they endure.",
                  poster_path: imageBase + "/t6HIqrRAclMCA60NsSmeqe9RmNV.jpg",
                  backdrop_path: imageBase + "/s16H6tpK2utvwDtzZ8Qy4qm5Emw.jpg"),
        movieJSON(id: UUID(), title: "Devotion",
                  overview: "The harrowing true story of two elite US Navy fighter pilots during the Korean War. Their heroic sacrifices would ultimately make them the Navy's most celebrated wingmen.",
                  poster_path: imageBase + "/26yQPXymbWeCLKwcmyL8dRjAzth.jpg",
                  backdrop_path: imageBase + "/5pMy5LF2JAleBNBtuzizfCMWM7k.jpg"),
        movieJSON(id: UUID(), title: "The Enforcer",
                  overview: "A noir thriller set in Miami, the film follows an enforcer who discovers his femme fatale boss has branched out into cyber sex trafficking, putting a young runaway he’s befriended at risk. He sacrifices everything to save the young girl from the deadly organization he’s spent his life building.",
                  poster_path: imageBase + "/72V1r1G8S87ELagVxjqAUdChMCt.jpg",
                  backdrop_path: imageBase + "/Aqldsq65Nj1KAkQD2MzkZsAk5N5.jpg"),
        movieJSON(id: UUID(), title: "Violent Night",
                  overview: "When a team of mercenaries breaks into a wealthy family compound on Christmas Eve, taking everyone inside hostage, the team isn’t prepared for a surprise combatant: Santa Claus is on the grounds, and he’s about to show why this Nick is no saint.",
                  poster_path: imageBase + "/1XSYOP0JjjyMz1irihvWywro82r.jpg",
                  backdrop_path: imageBase + "/sBOenwOZGRN5nZZGw4TxwtnfrEf.jpg")
    ]
}


