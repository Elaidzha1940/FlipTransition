//
//  Back.swift
//  FlipTransition
//
//  Created by Elaidzha Shchukin on 17.04.2024.
//

import SwiftUI

struct Back: View {
    var body: some View {
        VStack {
            Image(systemName: "person")
                .font(.system(size: 150, weight: .heavy))
        }
        .frame(width: 320, height: 420)
        .background(
            LinearGradient(colors: [.orange.opacity(0.6), .green.opacity(0.6)],
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing))
        .cornerRadius(20)
    }
}

#Preview {
    Back()
}
