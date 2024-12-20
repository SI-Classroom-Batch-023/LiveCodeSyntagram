//
//  StoryImageView.swift
//  LiveCodeSyntagram
//
//  Created by Jana Jansen on 20.12.24.
//

import SwiftUI

struct StoryImageView: View {

    let user: User

    var body: some View {
        VStack {
            Image(user.image)
                .resizable()
                .scaledToFill()
                .clipShape(.circle)
//                .profilePicture() // Bonus eigener Modifier - anwendbar statt resizable, scale und clipShape
                .frame(width: 60, height: 60)
                .padding(6)
                .overlay {
                    Circle()
                        .strokeBorder(.linearGradient(colors: [.yellow, .orange, .pink], startPoint: .bottomLeading, endPoint: .topTrailing), lineWidth: 3)
                }

            Text(user.name)
                .font(.title3)

        }
    }
}

#Preview {
    StoryImageView(user: User.user1)
}
