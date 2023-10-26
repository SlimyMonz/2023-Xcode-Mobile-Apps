//
//  GalleryView.swift
//  Hocker-P3
//
//  Created by Harry Hocker on 1/29/23.
//

import SwiftUI

struct GalleryView: View {
    
    var threeColumnGrid = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    let movies: [JSONResult.Movie]?
    
    var body: some View{
        NavigationView {
            ScrollView {
                LazyVGrid(columns: threeColumnGrid) {
                    ForEach(movies!, id: \.id) { movie in
                        GalleryCell(movie: movie)
                    }
                }.padding()
            }.navigationTitle("Gallery")
        }
    }
}

struct GalleryView_Previews: PreviewProvider {
    static var previews: some View {
        GalleryView(movies: JSONResult.Movie.exampleMovies)
    }
}
