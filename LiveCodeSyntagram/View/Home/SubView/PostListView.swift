//
//  PostListView.swift
//  LiveCodeSyntagram
//
//  Created by Jana Jansen on 20.12.24.
//

import SwiftUI

struct PostListView: View {
    
    var body: some View {
        VStack {
            PostView(post: Post.post1)
            PostView(post: Post.post2)
            PostView(post: Post.post3)
        }
    }
}

#Preview {
    PostListView()
}
