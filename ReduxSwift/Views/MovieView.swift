//
//  MovieView.swift
//  ReduxSwift
//
//  Created by hamedpouramiri on 12/1/23.
//

import SwiftUI

struct MovieView: View {
    @EnvironmentObject var store: Store<AppState>
    
    var body: some View {
        VStack {
            List(getProps().movies, id: \.id) { movie in
                Text(movie.name)
            }
        }
        .padding()
        .onAppear {
            getProps().searchFor("")
        }
    }
}

extension MovieView {
    struct Props {
        let movies: [Movie]
        let searchFor: (String) -> Void
    }
    
    func getProps() -> Props {
        Props(movies: store.state.movies.movies) { keyword in
            store.dispatch(action: FetchMovies(search: keyword))
        }
    }
}

#Preview {
    MovieView()
}
