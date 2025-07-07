//
//  Genre.swift
//  movie-app-live
//
//  Created by Gergo Szabo on 2025. 07. 06..
//

struct Genre: Identifiable, Hashable, Equatable {
    let id: Int
    let name: String
    
    init(id: Int, name: String){
        self.id = id
        self.name = name
    }
    
    init(dto: GenreResponse){
        self.id = dto.id
        self.name = dto.name
    }
}
