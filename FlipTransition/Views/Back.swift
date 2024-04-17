//  /*
//
//  Project: FlipTransition
//  File: Back.swift
//  Created by: Elaidzha Shchukin
//  Date: 17.04.2024
//
//  */

import SwiftUI

struct Back: View {
    var body: some View {
        VStack {
            Image(systemName: "person")
                .font(.system(size: 150, weight: .heavy))
        }
        .frame(width: 320, height: 420)
        .background(
            LinearGradient(colors: [.black.opacity(0.5), .mint.opacity(0.5)],
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing))
        .cornerRadius(20)
    }
}

#Preview {
    Back()
}
