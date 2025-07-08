//
//  MainAssembler.swift
//  movie-app-live
//
//  Created by Gergo Szabo on 2025. 07. 05..
//

import Swinject

class MainAssembler {
    public static var instance: MainAssembler! = nil
    
    var resolver: Resolver {
        return assembler.resolver
    }
    
    let container: Container
    private let assembler: Assembler
    
    private init(withAssemblies assemblies: [Assembly]) {
        container = Container()
        assembler = Assembler(container: container)
        assembler.apply(assemblies: assemblies)
    }
    
    static func create(withAssemblies assemblies: [Assembly]) -> MainAssembler {
        instance = MainAssembler(withAssemblies: assemblies)
        return instance
        
    }
    
    deinit{
        log.debug("deinit")
    }
    
    func dispose(){
        log.debug("dispose")
    }
}
