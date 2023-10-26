//
//  ListCell.swift
//  Hocker-P3
//
//  Created by Harry Hocker on 1/29/23.
//


import Foundation
import SwiftUI

struct ListCell: View {
    
    let movie: JSONResult.Movie
    
    var body: some View {
        
        NavigationLink {
            MovieView(movie: movie)
        } label: {
            HStack {
                AsyncImage(url: URL(string: imgURL + movie.poster_path), content:
                { image in image.resizable()
                        .scaledToFit()

                },
                           placeholder: {
                    ProgressView(){
                        Image("placeholder-image")
                            .resizable()
                            .scaledToFit()
                            .background()
                    } .progressViewStyle(.linear)
                })
                .frame(height: 120.0)
                
                VStack (alignment: .leading, spacing: 8) {
                    Text(movie.title)
                        .fontWeight(.semibold)
                        .foregroundColor(Color.primary)
                        .multilineTextAlignment(.leading)
                        .lineLimit(1)
                    Text(movie.overview)
                        .font(.body)
                        .foregroundColor(Color.secondary)
                        .multilineTextAlignment(.leading)
                        .lineLimit(3)
                }
                .frame(maxWidth: .infinity)
            }
        }
    }
}


struct ListCell_Previews: PreviewProvider {
    static var previews: some View {
        // load the first example movie to test scene
        ListCell(movie: JSONResult.Movie.exampleMovies[0])
    }
}
