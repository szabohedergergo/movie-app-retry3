//
//  Environments.swift
//  movie-app-live
//
//  Created by Gergo Szabo on 2025. 07. 05..
//

struct Environments {
    enum Name {
        case prod
        case dev
        case tvlist
    }
    
#if ENV_PROD
    static let name: Name = .prod
#elseif ENV_TVLIST
    static let name: Name = .tvlist
#else
    static let name: Name = .dev
#endif
    
}
