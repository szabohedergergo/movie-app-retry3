//
//  FetchGenreRequest.swift
//  movie-app-live
//
//  Created by Gergo Szabo on 2025. 07. 08..
//

import Foundation

struct FetchGenreRequest: LocalizedRequestable {
    let accessToken: String = Config.bearerToken
    
    func asRequestParams() -> [String: Any] {
        return languageParam
    }
}

protocol LocalizedRequestable {
    var languageParam: [String: Any] { get }
}

extension LocalizedRequestable {
    var languageParam: [String: Any] {
        ["language" : Bundle.getLangCode()]
    }
}

func + (lhs: [String: Any], rhs: [String:Any]) -> [String:Any]{
    var result = lhs
    rhs.forEach { (key: String, value: Any) in
        result[key] = value
    }
    return result
}
