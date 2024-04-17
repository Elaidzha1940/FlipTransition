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
                        Front()
                            .transition(.reverseFlip)
                    } else {
                        Back()
                            .transition(.flip)
                    }
                }
                .frame(width: 300, height: 400)
                
                Button(flipCard ? "Hide" : "Reveal") {
                    withAnimation(.bouncy(duration: 3)) {
                        flipCard.toggle()
                    }
                }
                .font(.system(size: 25, weight: .semibold, design: .rounded))
                .padding()
                .background(Color.black.gradient)
                .foregroundStyle(.white)
                .cornerRadius(20)
                .padding(30)
            }
            .navigationTitle("Flip")
        }
    }
}

#Preview {
    ContentView()
}

struct FlipTransition: ViewModifier, Animatable {
    var progress: CGFloat = 0
    var animatableData: CGFloat {
        get { progress }
        set { progress = newValue}
    }
    
    
    func body(content: Content) -> some View {
        content
            .opacity(progress < 0 ? (-progress < 0.5 ? 1 : 0) : (progress < 0.5 ? 1 : 0))
            .rotation3DEffect(
                .init(degrees: progress * 180),
                axis: (x: 0.0, y: 1.0, z: 0.0)
            )
    }
}

extension AnyTransition {
    static let flip: AnyTransition = .modifier(
        active: FlipTransition(progress: 1),
        identity: FlipTransition()
    )
    
    static let reverseFlip: AnyTransition = .modifier(
        active: FlipTransition(progress: -1),
        identity: FlipTransition()
    )
}
