//
//  TabHost.swift
//  LiveCodeSyntagram
//
//  Created by Jana Jansen on 17.01.25.
//

import SwiftUI

struct TabHost: View {
    var body: some View {
        NavigationStack {
            TabView {
                Tab("", systemImage: TabItem.home.icon) {
                    HomeScreen()
                }
                Tab("", systemImage: TabItem.search.icon) {
                    Text("Search Placeholder")
                }
                Tab("", systemImage: TabItem.reels.icon) {
                    Text("Reels Placeholder")
                }
                Tab("", systemImage: TabItem.ads.icon) {
                    Text("Ads Placeholder")
                }
                Tab("", systemImage: TabItem.profile.icon) {
                    ProfileView(user: User.user2)
                }
            }
            .onAppear {
                let appearance = UITabBarAppearance()
                appearance.backgroundColor = UIColor(Color.white)

                UITabBar.appearance().standardAppearance = appearance
                UITabBar.appearance().scrollEdgeAppearance = appearance
            }
            // navigationDestinations funktionieren ohne weiteres nicht mit Bindings!
            .navigationDestination(for: User.self) { user in
                ProfileView(user: user)
            }
        }

    }
}

#Preview {
    TabHost()
}
