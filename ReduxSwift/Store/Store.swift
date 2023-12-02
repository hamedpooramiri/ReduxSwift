//
//  Store.swift
//  ReduxSwift
//
//  Created by hamedpouramiri on 12/2/23.
//

import Foundation

final class Store<StoreState: ReduxState>: ObservableObject {

    private var reducer: Reducer<StoreState>
    @Published var state: StoreState
    private var middleWares: [MiddleWare<StoreState>]
    
    init(reducer: @escaping Reducer<StoreState>, state: StoreState, middleWares: [MiddleWare<StoreState>] = []) {
        self.reducer = reducer
        self.state = state
        self.middleWares = middleWares
    }
 
    func dispatch(action: Action) {
        DispatchQueue.main.async { [self] in
            self.state = reducer(self.state, action)
        }
        // run all middlewares
        middleWares.forEach { middleware in
            middleware(state, action, dispatch)
        }
    }
}
