//
//  ListView.swift
//  Hocker-P3
//
//  Created by Harry Hocker on 1/29/23.
//

import SwiftUI

struct ListView: View {
    let movies: [JSONResult.Movie]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(movies, id: \.id) { movie in
                    ListCell(movie: movie)
                }
            }
            .listStyle(.inset)
            .navigationTitle("Movies")
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView(movies: JSONResult.Movie.exampleMovies)
    }
}
