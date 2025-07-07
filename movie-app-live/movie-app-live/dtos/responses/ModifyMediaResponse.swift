//
//  ModifyMediaResponse.swift
//  movie-app-live
//
//  Created by Gergo Szabo on 2025. 07. 07..
//


//
//  AddFavoriteResponse.swift
//  movie-app-live
//
//  Created by Gergo Szabo on 2025. 05. 06..
//

struct ModifyMediaResponse : Decodable {
    let success : Bool
    let statusCode : Int
    let statusMessage : String

    enum CodingKeys: String, CodingKey {
        case success
        case statusCode = "status_code"
        case statusMessage = "status_message"
    }
}