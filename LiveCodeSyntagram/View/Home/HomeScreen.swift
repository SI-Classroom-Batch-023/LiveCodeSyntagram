//
//  HomeScreen.swift
//  LiveCodeSyntagram
//
//  Created by Jana Jansen on 20.12.24.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {

        VStack {

            TopBar()

            ScrollView {

                StoryListView()

                Divider()

                PostListView()

            }
            .scrollIndicators(.hidden)

            BottomBar()

        }
    }
}

#Preview {
    HomeScreen()
}
