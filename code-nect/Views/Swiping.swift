//
//  Swiping.swift
//  code-nect
//
//  Created by Navya Vohra on 2025-01-19.
//

import SwiftUICore

struct SwipingView: View {
    var profiles: [String] = ["Profile 1", "Profile 2", "Profile 3"] // Dummy data
    @State private var currentIndex = 0
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                ForEach(profiles.indices.reversed(), id: \.self) { index in
                    if index == currentIndex {
                        CardView(profileName: profiles[index])
                            .frame(width: geometry.size.width * 0.8, height: geometry.size.height * 0.6)
                            .background(Color.backgroundLight)
                            .cornerRadius(20)
                    }
                }
            }
        }
    }
}

struct CardView: View {
    let profileName: String
    
    var body: some View {
        VStack {
            Text(profileName)
                .font(.headline)
                .foregroundColor(.black)
        }
    }
}

