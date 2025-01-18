//
//  UserProfile.swift
//  code-nect
//
//  Created by Navya Vohra on 2025-01-18.
//
import Foundation

struct UserProfile: Identifiable {
    let id = UUID()
    var name: String
    var pronouns: String
    var specialty: String
    var vibes: String
    var goal: String
    var tools: [String]
}
