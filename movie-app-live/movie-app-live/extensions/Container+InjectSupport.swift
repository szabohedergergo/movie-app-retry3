//
//  Container+InjectSupport.swift
//  movie-app-live
//
//  Created by Gergo Szabo on 2025. 07. 05..
//

//hogy a swinject.container megfeleljen az injectpropertywrapper.Resolver protokollnak
import Swinject
import InjectPropertyWrapper

extension Container: InjectPropertyWrapper.Resolver {
    
}
