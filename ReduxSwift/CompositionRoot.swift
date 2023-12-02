//
//  CompositionRoot.swift
//  ReduxSwift
//
//  Created by hamedpouramiri on 12/2/23.
//

import SwiftUI

struct CompositionRoot: View {
    
    private var store = Store(reducer: appReducer, state: AppState(), middleWares: [moviesMiddleware()])
    
    var body: some View {
        NavigationView {
            MovieView()
        }
        .environmentObject(store)
    }
    
}

#Preview {
    CompositionRoot()
}
