//
//  StoryView.swift
//  LiveCodeSyntagram
//
//  Created by Jana Jansen on 17.01.25.
//

import SwiftUI

struct StoryView: View {

    @Binding var story: Story

    @State private var currentImageIdx: Int = 0

    // Bonus
    @Environment(\.dismiss) var dismiss

    let screenWidth = UIScreen.main.bounds.size.width

    var body: some View {

        Image(story.images[currentImageIdx])
            .resizable()
            .scaledToFill()
            .ignoresSafeArea()
            .onTapGesture(coordinateSpace: .global) { location in

                if location.x > screenWidth / 2 {
                    // user hat rechts getappt
                    print("user hat rechts getappt")
                    // count = 3
                    // currentIdx = 1
                    // 1 + 1 < 3
                    // currentIdx = 2 (3. und letzten bild)
                    // 2 + 1 !< 3
                    // wenn wir den currentImageIdx um 1 erhöhen können, ohne über die anzahl der bilder hinaus zu gehen, dann tun wir es
                    if currentImageIdx + 1 < story.images.count  {
                        currentImageIdx += 1
                    } else {
                        // dismiss navigiert zurück bzw schließt die view, wenn sie durch naviagtion oder zB als sheet geöffnet wurde
                        story.isShown = true
                        dismiss()
                    }
                } else {
                    // user links getappt
                    print("user hat links getappt")

//                    if currentImageIdx - 1 >= 0 {
                    if currentImageIdx > 0 {
                        currentImageIdx -= 1
                    } else {
                        dismiss()
                    }
                }

//                print(location.x)
//                print(location.y)
            }
            .toolbar(.hidden, for: .navigationBar)
    }
}

#Preview {
    StoryView(story: .constant(Story.story1))
}
