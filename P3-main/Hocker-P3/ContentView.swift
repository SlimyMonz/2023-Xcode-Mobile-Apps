//
//  ContentView.swift
//  Hocker-P3
//
//  Created by Harry Hocker on 1/28/23.
//
import SwiftUI

let url = "https://api.themoviedb.org/3/movie/"
let imgURL = "https://image.tmdb.org/t/p/w1280"
let key = "?api_key=ba9ea31f1601f17c824c434b4f79f3d4"

let now_playing = "now_playing"
let popular = "popular"
let top_rated = "top_rated"
let andPage = "&page="

struct ContentView: View {
    
    @State var tab = 1
    
    @ObservedObject var resAPI = movieAPI(api: url + now_playing + key)
    
    var body: some View {
        TabView(selection: $tab) {
            ListView(movies: resAPI.results)
                .tabItem {
                Label("Movies", systemImage: "list.bullet")
            } .tag(1)
            
            GalleryView(movies: resAPI.results)
                .tabItem {
                Label("Gallery", systemImage: "photo.stack")
            } .tag(2)
                
        }.task {
            await resAPI.loadData()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


