//
//  Config.swift
//  movie-app-live
//
//  Created by Gergo Szabo on 2025. 07. 05..
//

import Foundation

enum Config {
    private static func value<T>(forKey key: String, as type: T.Type) -> T {
        guard let path = Bundle.main.path(forSource: "Config", ofType: "pList"),
              let dict = NSDictionary(contentsOf: path),
              let value = dict[key] as? T else {
            fatalError("Config.pList or key: \(key) was not found or not type \(T.self)")
        }
        return value
    }
    
    static var apiToken: String {
        value(forKey: "API_TOKEN", as: String.self)
    }
    
    static var accountId: Int {
        value(forKey: "ACCOUNT_ID", as: Int.self)
    }
    
    static var bearerToken: String {
        "Bearer \(apiToken)"
    }
}
