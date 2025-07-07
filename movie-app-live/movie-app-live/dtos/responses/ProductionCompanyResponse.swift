//
//  ProductionCompanyResponse.swift
//  movie-app-live
//
//  Created by Gergo Szabo on 2025. 07. 07..
//

struct ProductionCompanyResponse: Decodable {
    let id: Int
    let name: String
    let logoPath: String
    let originCountry: String
    
    enum CodingKeys: String, CodingKey {
        case id
        case name
        case logoPath = "logo_path"
        case originCountry = "origin_country"
    }
}
