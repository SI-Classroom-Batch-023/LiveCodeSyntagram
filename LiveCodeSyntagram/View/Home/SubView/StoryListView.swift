//
//  StoriesView.swift
//  LiveCodeSyntagram
//
//  Created by Jana Jansen on 20.12.24.
//

import SwiftUI

struct StoryListView: View {
    var body: some View {
        ScrollView(.horizontal) {
            HStack {
                StoryImageView(user: User.user1)
                StoryImageView(user: User.user2)
                StoryImageView(user: User.user3)
                StoryImageView(user: User.user4)
                StoryImageView(user: User.user5)
            }
            .padding(.horizontal)
        }
        .scrollIndicators(.hidden)
    }
}

#Preview {
    StoryListView()
}
