////
////  FirebaseService.swift
////  code-nect
////
////  Created by Navya Vohra on 2025-01-19.
////
//
////import FirebaseFirestore
////import FirebaseFunctions
//
//class FirebaseService {
//    static let shared = FirebaseService()
//    private let db = Firestore.firestore()
//    private let functions = Functions.functions()
//
//    // MARK: - Create Channel
//    func createChannel(name: String, completion: @escaping (Bool) -> Void) {
//        let channelId = UUID().uuidString
//        let channelData: [String: Any] = [
//            "name": name,
//            "code": channelId,
//            "members": []
//        ]
//        db.collection("channels").document(channelId).setData(channelData) { error in
//            if let error = error {
//                print("Error creating channel: \(error)")
//                completion(false)
//            } else {
//                completion(true)
//            }
//        }
//    }
//
//    // MARK: - Join Channel
//    func joinChannel(channelCode: String, userId: String, completion: @escaping (Bool) -> Void) {
//        db.collection("channels").whereField("code", isEqualTo: channelCode).getDocuments { snapshot, error in
//            if let error = error {
//                print("Error finding channel: \(error)")
//                completion(false)
//            } else if let document = snapshot?.documents.first {
//                let channelId = document.documentID
//                self.db.collection("channels").document(channelId).updateData([
//                    "members": FieldValue.arrayUnion([userId])
//                ]) { error in
//                    if let error = error {
//                        print("Error joining channel: \(error)")
//                        completion(false)
//                    } else {
//                        completion(true)
//                    }
//                }
//            } else {
//                completion(false)
//            }
//        }
//    }
//
//    // MARK: - Save User Profile
//    func saveUserProfile(userId: String, profileData: [String: Any], completion: @escaping (Bool) -> Void) {
//        db.collection("users").document(userId).setData(profileData) { error in
//            if let error = error {
//                print("Error saving profile: \(error)")
//                completion(false)
//            } else {
//                completion(true)
//            }
//        }
//    }
//
//    // MARK: - Save Swipe Data
//    func saveSwipe(userId: String, swipedUserId: String, isLiked: Bool, completion: @escaping (Bool) -> Void) {
//        let swipeField = isLiked ? "swipes.yes" : "swipes.no"
//        db.collection("users").document(userId).updateData([
//            swipeField: FieldValue.arrayUnion([swipedUserId])
//        ]) { error in
//            if let error = error {
//                print("Error saving swipe: \(error)")
//                completion(false)
//            } else {
//                completion(true)
//            }
//        }
//    }
//
//    // MARK: - Generate Team
//    func generateTeam(userId: String, completion: @escaping ([String]?) -> Void) {
//        functions.httpsCallable("generateTeam").call(["userId": userId]) { result, error in
//            if let error = error {
//                print("Error generating team: \(error)")
//                completion(nil)
//            } else if let data = result?.data as? [String: Any],
//                      let matchedUsers = data["matchedUsers"] as? [String] {
//                completion(matchedUsers)
//            } else {
//                completion(nil)
//            }
//        }
//    }
//}
