//
//  TextModifier.swift
//  LiveCodeSyntagram
//
//  Created by Jana Jansen on 20.12.24.
//

import SwiftUI

struct BarButtonStyleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .tint(.black)
            .font(.title)
    }
}

extension View {
    // barButtonStyle ist für alle Views verfügbar
    func barButtonStyle() -> some View {
        modifier(BarButtonStyleModifier())
    }
}
