//
//  File.swift
//  Flixster Pt. 1
//
//  Created by Jing Liu on 3/6/23.
//

import Foundation

struct Movie {
    let original_title: String
    let overview: String
    let backdrop_path: URL
    let vote_average: Float
    let vote_count: Int
    let popularity: Float
}

extension Movie {
    static var mockMovies: [Movie] = [
        Movie(original_title: "Black Panther: Wakanda Forever", overview: "Queen Ramonda, Shuri, M’Baku, Okoye and the Dora Milaje fight to protect their nation from intervening world powers in the wake of King T’Challa’s death.  As the Wakandans strive to embrace their next chapter, the heroes must band together with the help of War Dog Nakia and Everett Ross and forge a new path for the kingdom of Wakanda.", backdrop_path: URL(string:"https://image.tmdb.org/t/p/original/sv1xJUazXeYqALzczSZ3O6nkH75.jpg")!, vote_average: 7.4, vote_count: 3783, popularity: 2949.117),
        Movie(original_title: "Plane", overview: "After a heroic job of successfully landing his storm-damaged aircraft in a war zone, a fearless pilot finds himself between the agendas of multiple militias planning to take the plane and its passengers hostage.", backdrop_path: URL(string:"https://image.tmdb.org/t/p/original/k4V6EvpcOsu8CX10JD0H53lFXLq.jpg")!, vote_average: 6.9, vote_count: 754, popularity: 2200.205),
        Movie(original_title: "Little Dixie", overview: "Erstwhile Special Forces operative Doc Alexander is asked to broker a truce with the Mexican drug cartel in secrecy. When Oklahoma Governor Richard Jeffs celebrates the execution of a high-ranking cartel member on TV, his Chief of Staff and Doc inform him about the peace he just ended. But it’s too late, as Cuco, the cartel’s hatchet man, has set his vengeful sights on Doc’s daughter Dixie.", backdrop_path: URL(string: "https://image.tmdb.org/t/p/original/cmWTZj9zzT9KFt3XyL0gssL7Ig8.jpg")!, vote_average: 6.3, vote_count: 44, popularity: 1698.096),
        Movie(original_title: "Huesera", overview: "Valeria's joy at becoming a first-time mother is quickly taken away when she's cursed by a sinister entity. As danger closes in, she's forced deeper into a chilling world of dark magic that threatens to consume her.", backdrop_path: URL(string: "https://image.tmdb.org/t/p/original/7NhG3NClQ1xrc3kEwTiwFht5Y3L.jpg")!, vote_average: 6.8, vote_count: 57, popularity: 1511.332),
        Movie(original_title: "M3GAN", overview: "A brilliant toy company roboticist uses artificial intelligence to develop M3GAN, a life-like doll programmed to emotionally bond with her newly orphaned niece. But when the doll's programming works too well, she becomes overprotective of her new friend with terrifying results.", backdrop_path: URL(string: "https://image.tmdb.org/t/p/original/d9nBoowhjiiYc4FBNtQkPY7c11H.jpg")!, vote_average: 7.5, vote_count: 1864, popularity: 1420.255)
    ]
}
