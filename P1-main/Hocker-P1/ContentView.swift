//
//  ContentView.swift
//  Hocker-P1
//
//  Created by Harry Hocker on 2/3/23.
//

import SwiftUI

struct ContentView: View {
    let models: [CharacterModel]
    let character = "Venom"
    
    var body: some View {
        NavigationView {
            VStack {
                Image("image0")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(16)
                    .padding()
                List {
                    ForEach(models) { model in
                        NavigationLink(model.title, destination: CharacterDetailView(model: model))
                    }
                }
            }
            .navigationTitle(character)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(models: CharacterModel.examples)
    }
}
