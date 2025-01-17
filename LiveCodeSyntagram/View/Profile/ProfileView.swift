//
//  ProfileView.swift
//  LiveCodeSyntagram
//
//  Created by Jana Jansen on 17.01.25.
//

import SwiftUI

struct ProfileView: View {

    let user: User

    var body: some View {

        Image(user.image)
            .resizable()
            .scaledToFill()
            .frame(width: 150, height: 150)
            .clipShape(.circle)


        Text(user.name)
            .font(.headline)

        Spacer()
    }
}

#Preview {
    ProfileView(user: User.user1)
}
