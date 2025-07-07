//
//  SpokenLanguagesResponse.swift
//  movie-app-live
//
//  Created by Gergo Szabo on 2025. 07. 07..
//

struct SpokenLanguagesResponse: Decodable {
    let englishName: String
    let name: String
    
    enum CodingKeys: String, CodingKey {
        case englishName = "english_name"
        case name
    }
}
