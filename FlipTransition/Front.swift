//
//  Front.swift
//  FlipTransition
//
//  Created by Elaidzha Shchukin on 17.04.2024.
//

import SwiftUI

struct Front: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            // Date
            HStack {
                VStack(alignment: .leading) {
                    Text("DATE")
                        .font(.system(size: 25, weight: .semibold, design: .monospaced))
                    
                    Text("THU 6 JUL")
                        .font(.system(size: 25, weight: .semibold, design: .monospaced))
                }
                
                Image(systemName: "person")
                    .font(.system(size: 50, weight: .heavy))
                    .padding(.leading, 135)

            }
            // Time
            VStack(alignment: .leading) {
                Text("TIME")
                    .font(.system(size: 25, weight: .semibold, design: .monospaced))
                
                Text("02:00 GMT +3")
                    .font(.system(size: 25, weight: .semibold, design: .monospaced))
            }
            // Username
            VStack(alignment: .leading) {
                Text("USERNAME")
                    .font(.system(size: 25, weight: .semibold, design: .monospaced))
            }
            
            Image(systemName: "person")
                .font(.system(size: 50, weight: .heavy))
            
            Divider()
            
            HStack {
                Image(systemName: "house")
                    .font(.system(size: 30, weight: .bold))
                
                Text("eli_shuchukin")
                    .font(.system(size: 20, weight: .bold, design: .rounded))
                
                Text("#080208")
                    .padding(.leading, 70)
            }
                
        }
        .padding()
    }
}

#Preview {
    Front()
}
