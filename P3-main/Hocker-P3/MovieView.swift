//
//  MovieView.swift
//  Hocker-P3
//
//  Created by Harry Hocker on 1/29/23.
//

import SwiftUI

struct MovieView: View {
    
    let movie: JSONResult.Movie
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        
        ZStack {
            ScrollView{
                VStack {
                    AsyncImage(url: URL(string: imgURL + movie.backdrop_path),
                               content: { image in
                        image.resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(maxWidth: .greatestFiniteMagnitude)
                            .padding(.horizontal)
                    },
                               placeholder: {
                        ProgressView(){
                            Image("placeholder-image")
                                .resizable()
                                .scaledToFit()
                                .background()
                        } .progressViewStyle(.linear)
                    }
                    )
                    HStack(alignment: .top) {
                        Text(movie.overview).padding(.horizontal)
                    }
                }
                .navigationTitle(movie.title).navigationBarTitleDisplayMode(.inline).padding()
            }
            }
            .background(
                AsyncImage(url: URL(string: imgURL + movie.backdrop_path))
                    .blur(radius: 100)
                    .brightness(colorScheme == .light ? 0.5 : -0.2)

            )
    }
}

struct MovieView_Previews: PreviewProvider {
    static var previews: some View {
        MovieView(movie: JSONResult.Movie.exampleMovies[4])
    }
}
