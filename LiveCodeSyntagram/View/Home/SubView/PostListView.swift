//
//  PostListView.swift
//  LiveCodeSyntagram
//
//  Created by Jana Jansen on 20.12.24.
//

import SwiftUI

struct PostListView: View {

    @State private var postList = [
        Post.post1,
        Post.post2,
        Post.post3
    ]

    var body: some View {
        VStack {
            ForEach($postList) { $post in
                PostView(post: $post)
            }
        }
    }
}

#Preview {
    PostListView()
}
