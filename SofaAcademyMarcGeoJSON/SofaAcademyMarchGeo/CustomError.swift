import Foundation

enum CustomError: String, Error {
    case invalidUsername  = "This username created an invalid request, please try again."
    case invalidResponse  = "Invalid response from the server, please try again."
    case unableToComplete = "Unable to complete request, please check your internet connection."
    case invalidData = "The data recieved from the server is invalid, please try again."
    case unableToFavorite = "Cannot retrieve favorites"
    case alreadyFavorite = "User already in favorites"
}
