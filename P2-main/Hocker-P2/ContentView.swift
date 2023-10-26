//
//  ContentView.swift
//  Hocker-P2
//
//  Created by Harry Hocker on 1/23/23.
//

import SwiftUI

struct ContentView: View {
    
    let movies = movieJSON.exampleMovies
    
    var body: some View {
        NavigationView {
            List {
                ForEach(movies) { movie in
                    ListCell(movie: movie)
                }
            }
            .listStyle(.inset)
            .navigationTitle("Movies")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
