//
//  PostView.swift
//  LiveCodeSyntagram
//
//  Created by Jana Jansen on 20.12.24.
//

import SwiftUI

struct PostView: View {

    @Binding var post: Post

    var body: some View {
        VStack {

            // Header
            HStack {
                NavigationLink(value: post.user) {
                    Image(post.user.image)
                        .resizable()
                        .scaledToFill()
                        .clipShape(.circle)
                    //                    .profilePicture() // Bonus eigener Modifier - anwendbar statt resizable, scale und clipShape
                        .frame(width: 50, height: 50)
                    
                    Text(post.user.name)
                        .fontWeight(.semibold)
                        .font(.title3)
                }

                Spacer()

                Button {

                } label: {
                    Image(systemName: "ellipsis")
                }
            }
            .padding(.horizontal)
            .padding(.vertical, 4)

            // Image
            Image(post.image)
                .resizable()
                .scaledToFit()


            // Footer
            HStack(spacing: 12) {
                Button {
                    withAnimation {
                        post.isLiked.toggle()
                    }
                } label: {
                    Image(systemName: post.isLiked ? "heart.fill" : "heart")
                        .tint(post.isLiked ? .red : .black)
                }

                Button {

                } label: {
                    Image(systemName: "message")
                }

                Button {

                } label: {
                    Image(systemName: "paperplane")
                }

                Spacer()

                Button {
                    post.isBookmarked.toggle()
//                    post.isBookmarked = !post.isBookmarked
                } label: {
                    Image(systemName: post.isBookmarked ? "bookmark.fill" : "bookmark")
                }
            }
            .padding(.horizontal)
            .padding(.vertical, 4)

            HStack(spacing: 0) {
                Text("Liked by ")
                Text("Lisa")
                    .bold()
                Text(" and others")
                Spacer()
            }
            .font(.caption)
            .padding(.horizontal)

            Divider()

        }
        .tint(.black)
        .font(.title2)
    }
}

#Preview {
    PostView(post: .constant(Post.post1))
}
