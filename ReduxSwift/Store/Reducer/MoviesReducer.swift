//
//  MoviesReducer.swift
//  ReduxSwift
//
//  Created by hamedpouramiri on 12/1/23.
//

import Foundation

public func moviesReducer(_ state: MoviesState, _ action: Action) -> MoviesState {
    var state = state
    switch action {
    case let setMovies as SetMovies:
        state.movies = setMovies.Movies
    default:
        break
    }
    return state
}
