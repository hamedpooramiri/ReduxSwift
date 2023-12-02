//
//  MiddleWare.swift
//  ReduxSwift
//
//  Created by hamedpouramiri on 12/1/23.
//

import Foundation
typealias Dispatcher = (Action) -> Void
typealias MiddleWare<StoreState: ReduxState> = (StoreState, Action, @escaping Dispatcher) -> Void
