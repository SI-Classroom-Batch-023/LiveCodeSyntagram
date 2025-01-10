//
//  StoriesView.swift
//  LiveCodeSyntagram
//
//  Created by Jana Jansen on 20.12.24.
//

import SwiftUI

struct StoryListView: View {

    @State private var storyList = [
        Story(user: User.user1),
        Story(user: User.user2),
        Story(user: User.user3),
        Story(user: User.user4),
        Story(user: User.user5)
    ]

    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                ForEach($storyList.sorted(by: { $story1, $story2 in
                    return !story1.isShown
                })) { $story in
                    StoryImageView(story: $story)
//                    SubView(story: story)
                }
            }
            .padding(.horizontal)
        }
        .scrollIndicators(.hidden)
    }
}

#Preview {
    StoryListView()
}
