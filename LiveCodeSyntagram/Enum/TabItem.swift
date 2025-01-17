//
//  TabItem.swift
//  LiveCodeSyntagram
//
//  Created by Jana Jansen on 17.01.25.
//

import Foundation

enum TabItem {

    case home, search, reels, ads, profile

    var icon: String {
        switch self {
        case .home:
            "house"
        case .search:
            "magnifyingglass"
        case .reels:
            "movieclapper"
        case .ads:
            "bag"
        case .profile:
            "person.circle"
        }
    }
}
