//
//  Hocker_P1App.swift
//  Hocker-P1
//
//  Created by Harry Hocker on 2/3/23.
//

import SwiftUI

@main
struct Hocker_P1App: App {
    var body: some Scene {
        WindowGroup {
            ContentView(models: CharacterModel.examples)
        }
    }
}
