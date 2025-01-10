//
//  StoryImageView.swift
//  LiveCodeSyntagram
//
//  Created by Jana Jansen on 20.12.24.
//

import SwiftUI

struct StoryImageView: View {

    @Binding var story: Story

    var body: some View {
        VStack {
            Image(story.user.image)
                .resizable()
                .scaledToFill()
                .clipShape(.circle)
//                .profilePicture() // Bonus eigener Modifier - anwendbar statt resizable, scale und clipShape
                .frame(width: 60, height: 60)
                .padding(6)
                .overlay {
                    if !story.isShown {
                        Circle()
                            .strokeBorder(.linearGradient(colors: [.yellow, .orange, .pink], startPoint: .bottomLeading, endPoint: .topTrailing), lineWidth: 3)
                    }
                }
                .onTapGesture {
                    withAnimation {
                        story.isShown = true
                    }
                }

            Text(story.user.name)
                .font(.title3)

        }
    }
}

#Preview {
    StoryImageView(story: .constant(Story(user: User.user1)))
}
