//
//  CharacterDetailView.swift
//  Hocker-P1
//
//  Created by Harry Hocker on 2/3/23.
//

import SwiftUI

struct CharacterDetailView: View {
    
    let model: CharacterModel
    
    var body: some View {
        VStack {
            Image(model.image)
                .resizable()
                .scaledToFit()
                .cornerRadius(16)
                .padding()
            ScrollView {
                Text(model.description)
            }
            Spacer()
        } .navigationTitle(model.title)
            .padding()
    }
}

struct CharacterDetailView_Previews: PreviewProvider {
    static var previews: some View {
        CharacterDetailView(model: CharacterModel.examples[0])
    }
}



