//
//  AlertModel.swift
//  movie-app-live
//
//  Created by Gergo Szabo on 2025. 07. 07..
//

struct AlertModel: Identifiable {
    let id = UUID()
    let title: String
    let message: String
    let dismissButtonTitle: String
}
