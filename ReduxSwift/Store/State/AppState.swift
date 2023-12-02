//
//  AppState.swift
//  ReduxSwift
//
//  Created by hamedpouramiri on 12/1/23.
//

import Foundation

public struct AppState: ReduxState {
    public var movies = MoviesState()
}
