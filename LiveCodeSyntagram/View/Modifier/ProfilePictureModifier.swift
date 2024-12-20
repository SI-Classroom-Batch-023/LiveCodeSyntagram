//
//  ProfilePictureModifier.swift
//  LiveCodeSyntagram
//
//  Created by Jana Jansen on 20.12.24.
//

import SwiftUI

extension Image {
    // profilePicture ist nur für Images verfügbar
    func profilePicture() -> some View {
        self
            .resizable() // resizable ist nur für Images verfügbar, deswegen können wir keinen allgemeinen ViewModifier damit bauen
            .scaledToFill()
            .clipShape(.circle)
    }
}
