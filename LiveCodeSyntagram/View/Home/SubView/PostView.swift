//
//  PostView.swift
//  LiveCodeSyntagram
//
//  Created by Jana Jansen on 20.12.24.
//

import SwiftUI

struct PostView: View {

    let post: Post

    var body: some View {
        VStack {

            // Header
            HStack {
                Image(post.user.image)
                    .resizable()
                    .scaledToFill()
                    .clipShape(.circle)
                    .frame(width: 50, height: 50)

                Text(post.user.name)
                    .fontWeight(.semibold)
                    .font(.title3)

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

                } label: {
                    Image(systemName: "heart")
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

                } label: {
                    Image(systemName: "bookmark")
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
    PostView(post: Post.post1)
}
