//
//  CreateJoin.swift
//  code-nect
//
//  Created by Navya Vohra on 2025-01-18.
//
import SwiftUI

struct CreateJoinView: View {
    @StateObject private var viewModel = CreateJoinViewModel()
    
    var body: some View {
        VStack(spacing: 40) {
            HStack(spacing: 20) {
                VStack {
                    Text("Create a channel")
                        .font(.headline)
                        .foregroundColor(.primaryPink)
                    
                    Image(systemName: "html")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .padding(.vertical)
                    
                    Text("Looking to host an event, sort groups for a project, or just match people for fun?")
                        .font(.caption)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.gray)
                    
                    Button("Create") {
                        viewModel.createChannel()
                    }
                    .padding()
                    .background(Color.primaryPink)
                    .foregroundColor(.white)
                    .cornerRadius(8)
                }
                .frame(maxWidth: .infinity)
                .background(Color.backgroundLight)
                .cornerRadius(10)
                
                VStack {
                    Text("Join a channel")
                        .font(.headline)
                        .foregroundColor(.primaryBlue)
                    
                    Image(systemName: "div")
                        .resizable()
                        .frame(width: 60, height: 60)
                        .padding(.vertical)
                    
                    TextField("Insert code...", text: $viewModel.channelCode)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    Button("Submit") {
                        viewModel.joinChannel()
                    }
                    .padding()
                    .background(Color.primaryBlue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
                }
                .frame(maxWidth: .infinity)
                .background(Color.backgroundLight)
                .cornerRadius(10)
            }
        }
        .padding()
        .background(Color.darkBackground.ignoresSafeArea())
    }
}
