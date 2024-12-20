//
//  BottomNavigation.swift
//  LiveCodeSyntagram
//
//  Created by Jana Jansen on 20.12.24.
//

import SwiftUI

struct BottomBar: View {
    var body: some View {

        HStack {
            Button {
                print("got to home screen")
            } label: {
                Image(systemName: "house.fill")
            }

            Spacer()

            Button {
                print("got to search screen")
            } label: {
                Image(systemName: "magnifyingglass")
            }

            Spacer()

            Button {
                print("got to reels screen")
            } label: {
                Image(systemName: "movieclapper")
            }

            Spacer()

            Button {
                print("got to ads screen")
            } label: {
                Image(systemName: "bag")
            }

            Spacer()

            Button {
                print("got to profile screen")
            } label: {
                Image(systemName: "person.circle")
            }
        }
        .tint(.black)
        .font(.title)
        .padding()
        .padding(.horizontal, 8)
    }
}

#Preview {
    BottomBar()
}
