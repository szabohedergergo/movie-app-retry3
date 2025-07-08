//
//  AppDelegate.swift
//  movie-app-live
//
//  Created by Gergo Szabo on 2025. 07. 05..
//

import UIKit
import InjectPropertyWrapper
import Swinject
//import FireBaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
    let assembler: MainAssembler
    
    func application(
        _ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil
    ) -> Bool {
        print("App launched")
        
        //FirebaseApp.configure()
        
        return true
    }
    
    override init(){
        assembler = MainAssembler.create(withAssemblies: [
            ServiceAssembly(),
            ViewModelAssembly()
        ])
        InjectSettings.resolver = assembler.container
    }
}
