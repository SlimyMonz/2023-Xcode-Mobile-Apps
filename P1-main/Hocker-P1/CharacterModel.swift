//
//  CharacterModel.swift
//  Hocker-P1
//
//  Created by Harry Hocker on 2/3/23.
//

import SwiftUI

struct CharacterModel: Identifiable {
    let id: UUID
    let image: String
    let title: String
    let description: String
}

extension CharacterModel {
    static var examples: [CharacterModel] = [
        CharacterModel(id: UUID(), image: "image2", title: "About", description: "Venom is a symbiote bonded with a human named Eddie Brock (usually with Spider-Man at first, though not in the most recent movies). He can be depicted in a variety of ways, but generally enhances the host with a muscular, slime-covered body. In the latest movies, Venom no longer bears the Spider-Man emblem due to partnering up with Eddie Brock immediately. However, the concept remains the same: Symbiotes (also known as Klyntar) need a host to survive, which grants said host greater abilities."),
        CharacterModel(id: UUID(), image: "image1", title: "Strengths", description: "Having all of Spider-Man's powers, such as super strength and a 'spider-sense', Venom also has a few more tricks. He can change the shape of his body: send out tendrils, turn his hands into blades, and even create 'pocket dimensions' for storing objects. In the variety of media, he has been depicted with extraordinary abilities such as flight, camoflauge, and even transforming others into monstrosities!"),
        CharacterModel(id: UUID(), image: "image3", title: "Weaknesses", description: "Symbiotes like Venom are immensely powerful, possessed of great strength and endurance, but they also have two extremely common weaknesses: fire and sound. Numerous foes have used these to best Venom and other symbiotes, and Spider-Man even originally repelled the symbiote suit by exposing it to a tolling bell. Venom's specific weakness is also chocolate! If he doesn't get enough, he'll start to crave human brains and perhaps go crazy. Who knew chocolate could be so therapeutic?")
    ]
}
