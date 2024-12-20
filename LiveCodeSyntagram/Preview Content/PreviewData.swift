//
//  PreviewData.swift
//  LiveCodeSyntagram
//
//  Created by Jana Jansen on 20.12.24.
//

import Foundation

// Daten zum Testen der App

extension User {
    static let user1 = User(name: "Herbert", image: "pp1")
    static let user2 = User(name: "Lena", image: "pp2")
    static let user3 = User(name: "Hans", image: "pp3")
    static let user4 = User(name: "Steven", image: "pp4")
    static let user5 = User(name: "Lisa", image: "pp5")
}

extension Post {
    static let post1 = Post(image: "post1", user: User.user2)
    static let post2 = Post(image: "post2", user: User.user1)
    static let post3 = Post(image: "post3", user: User.user4)
}
