//
//  ProfileCreationView.swift
//  code-nect
//
//  Created by Navya Vohra on 2025-01-18.
//
import SwiftUI
struct ProfileCreationView: View {
    @State private var pronouns = ""
    @State private var specialty = ""
    @State private var vibes = ""
    @State private var goal = ""
    @State private var tools = ""
    
    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Text("Create your profile!")
                    .font(.largeTitle)
                    .foregroundColor(.primaryPink)
                TextField("Pronouns", text: $pronouns)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                    .padding(.horizontal, 20)
                TextField("Specialty", text: $specialty)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                    .padding(.horizontal, 20)
                TextField("Vibes", text: $vibes)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                    .padding(.horizontal, 20)
                TextField("Life goal aside from leetcode is...", text: $goal)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                    .padding(.horizontal, 20)
                TextField("Tools I can use", text: $tools)
                    .padding()
                    .background(Color.gray.opacity(0.2))
                    .cornerRadius(10)
                    .padding(.horizontal, 20)
                Button(action: {}) {
                    Text("Commit")
                        .foregroundColor(.white)
                        .padding(.horizontal, 40)
                        .padding(.vertical, 10)
                        .background(Color.primaryBlue)
                        .cornerRadius(10)
                }
            }
        }
    }
}


#Preview {
    ProfileCreationView()
}


