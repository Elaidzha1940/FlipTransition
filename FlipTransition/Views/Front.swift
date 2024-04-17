//  /*
//
//  Project: FlipTransition
//  File: Front.swift
//  Created by: Elaidzha Shchukin
//  Date: 17.04.2024
//
//  */

import SwiftUI

struct Front: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            // Date
            HStack {
                VStack(alignment: .leading) {
                    Text("DATE")
                        .font(.system(size: 15, weight: .semibold, design: .monospaced))
                    
                    Text("THU 6 JUL")
                        .font(.system(size: 25, weight: .semibold, design: .monospaced))
                }
                Spacer()
                
                Image(systemName: "person")
                    .font(.system(size: 50, weight: .heavy))
            }
            .padding(.horizontal)
            
            // Time
            VStack(alignment: .leading) {
                Text("TIME")
                    .font(.system(size: 15, weight: .semibold, design: .monospaced))
                
                Text("02:00 GMT +3")
                    .font(.system(size: 25, weight: .semibold, design: .monospaced))
            }
            .padding(.horizontal)
            
            // Username
            VStack(alignment: .leading) {
                Text("USERNAME")
                    .font(.system(size: 15, weight: .semibold, design: .monospaced))
                
                Text("ELAIDZHA_ShCHUKIN")
                    .font(.system(size: 25, weight: .semibold, design: .monospaced))
                
            }
            .padding(.horizontal)
            
            // QR Image
            Image(systemName: "person")
                .font(.system(size: 50, weight: .heavy))
                .padding(.horizontal)
            
            
            Rectangle()
                .fill(Color.clear)
                .frame(height: 1)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(style: StrokeStyle(lineWidth: 1, dash: [5]))
                        .foregroundStyle(.secondary)
                )
                .padding(.horizontal)
            
            // Page
            HStack {
                Image(systemName: "house")
                    .font(.system(size: 20, weight: .bold))
                
                Text("elaidzha_shuchukin")
                    .font(.system(size: 18, weight: .bold, design: .rounded))
                
                Spacer()
                
                Text("#080208")
                    .font(.system(size: 15, weight: .bold, design: .rounded))
            }
            .padding(.horizontal)
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
    Front()
}
