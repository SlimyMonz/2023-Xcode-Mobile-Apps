//
//  ListCell.swift
//  Hocker-P2
//
//  Created by Harry Hocker on 1/23/23.
//

import Foundation
import SwiftUI

struct ListCell: View {
    
    let movie: movieJSON
    
    var body: some View {
        
        NavigationLink {
            MovieView(movie: movie)
        } label: {
            HStack {
                AsyncImage(url: URL(string: (movie.poster_path ?? "")), content:
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
                    Text(movie.title ?? "MOVIE TITLE")
                        .fontWeight(.semibold)
                        .foregroundColor(Color.primary)
                        .multilineTextAlignment(.leading)
                        .lineLimit(1)
                    Text(movie.overview ?? "OVERVIEW")
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
        ListCell(movie: movieJSON.exampleMovies[0])
        
    }
}
