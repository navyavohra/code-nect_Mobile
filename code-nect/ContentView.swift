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
            GeometryReader { geometry in
                HStack {
                    Spacer()
                    
                    VStack {
                        Image("codenect")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                        
                        Spacer()
                        
                        NavigationLink(destination: CreateJoinView()) {
                            Text("<start>")
                                .font(.title2)
                                .foregroundColor(.white)
                                .padding()
                                .background(Color.primaryBlue)
                                .cornerRadius(10)
                        }
                    }
                    .frame(width: geometry.size.width * 0.5)
                    
                    Spacer()
                }
                .padding()
                .background(Color.backgroundLight.ignoresSafeArea())
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

#Preview {
    ContentView()
}
