//
//  AppReducer.swift
//  ReduxSwift
//
//  Created by hamedpouramiri on 12/1/23.
//

import Foundation

typealias Reducer<State: ReduxState> = (_ state: State, _ action: Action) -> State

public func appReducer(_ state: AppState, _ action: Action) -> AppState {
    var state = state
    state.movies = moviesReducer(state.movies, action)
    return state
}
