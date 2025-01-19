//
//  TeamPickingView.swift
//  code-nect
//
//  Created by Navya Vohra on 2025-01-19.
//

import SwiftUICore
import SwiftUI

struct TeamPickingView: View {
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Text("Your team is being created...")
                    .font(.title)
                    .foregroundColor(.primaryPink)
                Spacer()
                Button(action: {}) {
                    Text("Add on Discord")
                        .foregroundColor(.white)
                        .padding(.horizontal, 40)
                        .padding(.vertical, 10)
                        .background(Color.primaryBlue)
                        .cornerRadius(10)
                }
                Spacer()
            }
            .frame(width: geometry.size.width, height: geometry.size.height)
            .background(Color.darkBackground.ignoresSafeArea())
        }
    }
}
