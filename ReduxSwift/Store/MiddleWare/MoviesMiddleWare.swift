//
//  MoviesMiddleWare.swift
//  ReduxSwift
//
//  Created by hamedpouramiri on 12/1/23.
//

import Foundation

func moviesMiddleware() -> MiddleWare<AppState> {
    return { state, action, dispatch in
        switch action {
        case let fetchAction as FetchMovies:
            // get data from API 
            dispatch(SetMovies(Movies: []))
        default:
            break
        }
    }
}
