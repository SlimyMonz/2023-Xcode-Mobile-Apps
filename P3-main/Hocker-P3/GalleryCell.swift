//
//  GalleryCell.swift
//  Hocker-P3
//
//  Created by Harry Hocker on 1/29/23.
//

import SwiftUI

struct GalleryCell: View {
    
    let movie: JSONResult.Movie
    
    var body: some View {
        
        NavigationLink {
            MovieView(movie: movie)
        } label: {
            AsyncImage(url: URL(string: imgURL + movie.poster_path),
                       content: { image in
                image.resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .greatestFiniteMagnitude)
            },
                       placeholder: {
                ProgressView(){
                    Image("placeholder-image")
                        .resizable()
                        .scaledToFit()
                        .background()
                } .progressViewStyle(.linear)
            })
        }
    }
}

struct GalleryCell_Previews: PreviewProvider {
    static var previews: some View {
        GalleryCell(movie: JSONResult.Movie.exampleMovies[1])
    }
}
