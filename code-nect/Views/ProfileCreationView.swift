//
//  ProfileCreationView.swift
//  code-nect
//
//  Created by Navya Vohra on 2025-01-18.
//
import SwiftUI

struct ProfileCreationView: View {
    @StateObject private var viewModel = ProfileCreationViewModel()
    
    var body: some View {
        VStack(spacing: 20) {
            Text("Create your profile!")
                .font(.largeTitle)
                .foregroundColor(.primaryPink)
            
            TextField("Name", text: $viewModel.name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            TextField("Pronouns (e.g., they/them)", text: $viewModel.pronouns)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            TextField("Specialty (e.g., full-stack, back-end)", text: $viewModel.specialty)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            TextField("Vibes (e.g., for the win!)", text: $viewModel.vibes)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            TextField("Life goal aside from leetcode is...", text: $viewModel.goal)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            TextField("Tools I can use (e.g., Python, CSS)", text: $viewModel.tools)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button("Commit") {
                let profile = viewModel.saveProfile()
                print("Profile Created: \(profile)")
                // Navigate to the next view or save the data
            }
            .padding()
            .background(Color.primaryBlue)
            .foregroundColor(.white)
            .cornerRadius(8)
        }
        .padding()
        .background(Color.darkBackground.ignoresSafeArea())
    }
}


