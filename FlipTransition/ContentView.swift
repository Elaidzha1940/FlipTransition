//  /*
//
//  Project: FlipTransition
//  File: ContentView.swift
//  Created by: Elaidzha Shchukin
//  Date: 16.04.2024
//
//  */

import SwiftUI

struct ContentView: View {
    @State private var flipCard: Bool = false
    
    var body: some View {
        NavigationStack {
            VStack {
                ZStack {
                    if flipCard {
                        RoundedRectangle(cornerRadius: 20)
                            .fill(.gray.gradient)
                    } else {
                        RoundedRectangle(cornerRadius: 20)
                            .fill(.black.gradient)
                    }
                }
                .frame(width: 300, height: 400)
                
                Button(flipCard ? "Hide" : "Reveal") {
                    withAnimation(.bouncy(duration: 0.5)) {
                        flipCard.toggle()
                    }
                }
                .padding(30)
            }
            .navigationTitle("Flip")
        }
    }
}

#Preview {
    ContentView()
}


struct FlipTransition: ViewModifier {
    var progress: CGFloat = 0
    func body(content: Content) -> some View {
        content
            .rotation3DEffect(
                init(degrees: progress * 180)
                axis: (x: 0.0, y: 1.0, z: 0.0)
            )
        
    }
}
