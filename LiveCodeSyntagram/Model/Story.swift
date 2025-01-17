//
//  Story.swift
//  LiveCodeSyntagram
//
//  Created by Jana Jansen on 10.01.25.
//
import Foundation

struct Story: Identifiable {
    let id = UUID()
    let user: User
    var images: [String]
    var isShown: Bool = false
}
