//
//  Header.swift
//  LiveCodeSyntagram
//
//  Created by Jana Jansen on 20.12.24.
//

import SwiftUI

struct TopBar: View {
    var body: some View {
        HStack {
            Text("Syntagram")
                .font(.custom("Apple Chancery", size: 30))
//                .bold()

            Spacer()

            HStack(spacing: 16) {
                Button {

                } label: {
                    Image(systemName: "plus.square")
                }

                Button {

                } label: {
                    Image(systemName: "heart")
                }
//                .padding(.horizontal, 4)

                Button {

                } label: {
                    Image(systemName: "message")
                }
            }
            .fontWeight(.semibold)
        }
        .tint(.black)
        .font(.title)
        .padding(.horizontal)
    }
}

#Preview {
    TopBar()
}
