//
//  CreateJoin.swift
//  code-nect
//
//  Created by Navya Vohra on 2025-01-18.
//

import SwiftUI

struct CreateJoinView: View {
    @State private var channelCode = ""
    
    var body: some View {
        GeometryReader { geometry in
            HStack(spacing: 40) {
                VStack(spacing: 20) {
                    Text("Create a channel")
                        .font(.headline)
                        .foregroundColor(.primaryPink)
                    Image("html-icon") // Replace with Figma's HTML image asset
                        .resizable()
                        .frame(width: 50, height: 50)
                    Text("Looking to host an event, sort groups for a project, or just match people for fun?")
                        .font(.caption)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.gray)
                    Button(action: {}) {
                        Text("Create")
                            .foregroundColor(.white)
                            .padding(.horizontal, 30)
                            .padding(.vertical, 10)
                            .background(Color.primaryPink)
                            .cornerRadius(10)
                    }
                }
                .frame(width: geometry.size.width * 0.4, height: geometry.size.height * 0.6)
                .background(Color.backgroundLight)
                .cornerRadius(20)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.primaryPink, lineWidth: 2)
                )
                
                VStack(spacing: 20) {
                    Text("Join a channel")
                        .font(.headline)
                        .foregroundColor(.primaryBlue)
                    Image("div-icon") // Replace with Figma's DIV image asset
                        .resizable()
                        .frame(width: 50, height: 50)
                    Text("Joining an existing channel to find a group? Insert the channel code here to get started.")
                        .font(.caption)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.gray)
                    TextField("Insert code...", text: $channelCode)
                        .padding()
                        .background(Color.gray.opacity(0.2))
                        .cornerRadius(10)
                        .padding(.horizontal, 67)
                        .padding(.vertical, 0)
                        .frame(width: 395, alignment: .center)
                    Button(action: {}) {
                        Text("Submit")
                            .foregroundColor(.white)
                            .padding(.horizontal, 30)
                            .padding(.vertical, 10)
                            .background(Color.primaryBlue)
                            .cornerRadius(10)
                    }
                }
                .frame(width: geometry.size.width * 0.4, height: geometry.size.height * 0.6)
                .background(Color.backgroundLight)
                .cornerRadius(20)
                .overlay(
                    RoundedRectangle(cornerRadius: 20)
                        .stroke(Color.primaryBlue, lineWidth: 2)
                )
            }
            .frame(width: geometry.size.width, height: geometry.size.height)
            .background(Color.darkBackground.ignoresSafeArea())
        }
    }
}


#Preview {
    CreateJoinView()
}
