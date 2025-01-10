//
//  Post.swift
//  LiveCodeSyntagram
//
//  Created by Jana Jansen on 20.12.24.
//

import Foundation

struct Post: Identifiable {
    let id = UUID()
    let image: String
    let user: User
    var isLiked: Bool = false
    var isBookmarked: Bool = false

}
