//
//  ContentView.swift
//  code-nect
//
//  Created by Navya Vohra on 2025-01-18.
//

import SwiftUICore
import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Spacer()
                
                Text("codenect")
                    .font(.system(size: 64, weight: .bold))
                    .foregroundColor(.black)
                
                Spacer()
                
                NavigationLink(destination: CreateJoinView()) {
                    Text("<start>")
                        .font(.title2)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.primaryPink)
                        .cornerRadius(10)
                }
                
                Spacer()
            }
            .padding()
            .background(Color.backgroundLight.ignoresSafeArea())
        }
    }
}


#Preview {
    ContentView()
}
