//
//  ErrorPresentable.swift
//  movie-app-live
//
//  Created by Gergo Szabo on 2025. 05. 06..
//

protocol ErrorPresentable {
    func toAlertModel(_ error: Error) -> AlertModel?
    
}

extension ErrorPresentable {
    func toAlertModel(_ error: Error) -> AlertModel? {
        guard let error = error as? MovieError else {
            return AlertModel(
                title: "unexpected.error.title",
                message: "unexpected.error.message",
                dismissButtonTitle: "button.close.text"
            )
        }
        switch error {
        case .invalidApiKeyError(let message):
            return AlertModel(
                title: "API Error",
                message: message,
                dismissButtonTitle: "button.close.text"
            )
        case .clientError:
            return AlertModel(
                title: "Client Error",
                message: error.localizedDescription,
                dismissButtonTitle: "button.close.text"
            )
        case .mappingError(let message):
            return AlertModel(
                title: "Mapping Error",
                message: message,
                dismissButtonTitle: "button.close.text"
            )
        case .noInternetError:
            return nil // Ha nincs internet, nem mindig akarunk pop-upot, hanem egy bannert (majd látjuk)
        case .serverError:
            return AlertModel(
                title: "Server Error",
                message: error.localizedDescription,
                dismissButtonTitle: "button.close.text"
            )
        default:
            return AlertModel(
                title: "unexpected.error.title",
                message: "unexpected.error.message",
                dismissButtonTitle: "button.close.text"
            )
        }
    }
}
