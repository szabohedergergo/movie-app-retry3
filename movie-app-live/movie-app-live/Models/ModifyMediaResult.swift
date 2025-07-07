//
//  ModifyMediaResult.swift
//  movie-app-live
//
//  Created by Gergo Szabo on 2025. 07. 07..
//


//
//  EditFavoriteResult.swift
//  movie-app-live
//
//  Created by Gergo Szabo on 2025. 05. 13..
//

struct ModifyMediaResult {
    let success: Bool
    let statusCode: Int
    let statusMessage: String
    
    init(dto: ModifyMediaResultResponse) { // Itt egy EditFavoriteResult.swift nevű fájlra hivatkozol, ami a feltöltött fájlok között ModifyMediaResultResponse-ként szerepel, ez alapján módosítottam.
        self.success = dto.success
        self.statusCode = dto.statusCode
        self.statusMessage = dto.statusMessage
    }
}