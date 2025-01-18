//
//  ProfileCreationViewModel.swift
//  code-nect
//
//  Created by Navya Vohra on 2025-01-18.
//
import Foundation

class ProfileCreationViewModel: ObservableObject {
    @Published var name = ""
    @Published var pronouns = ""
    @Published var specialty = ""
    @Published var vibes = ""
    @Published var goal = ""
    @Published var tools = ""
    
    func saveProfile() -> UserProfile {
        return UserProfile(
            name: name,
            pronouns: pronouns,
            specialty: specialty,
            vibes: vibes,
            goal: goal,
            tools: tools.split(separator: ",").map { $0.trimmingCharacters(in: .whitespaces) }
        )
    }
}
