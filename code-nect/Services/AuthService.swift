//
//  AuthService.swift
//  code-nect
//
//  Created by Navya Vohra on 2025-01-19.
//

//import FirebaseAuth
//
//class AuthService {
//    static let shared = AuthService()
//
//    // MARK: - Anonymous Sign-In
//    func signInAnonymously(completion: @escaping (String?) -> Void) {
//        Auth.auth().signInAnonymously { authResult, error in
//            if let error = error {
//                print("Error signing in anonymously: \(error)")
//                completion(nil)
//            } else if let userId = authResult?.user.uid {
//                completion(userId)
//            }
//        }
//    }
//}
