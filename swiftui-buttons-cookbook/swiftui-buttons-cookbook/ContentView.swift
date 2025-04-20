//
//  ContentView.swift
//  swiftui-buttons-cookbook
//
//  Created by Haider Ashfaq on 20/04/2025.
//

import SwiftUI

/// A view that lists all button styles in the pack and navigates to their previews.
public struct ContentView: View {
    public init() {}
    
    public var body: some View {
        NavigationStack {
            List {
                NavigationLink("Primary Button") {
                    PrimaryButton("Continue") {}
                        .padding()
                        .navigationTitle("Primary Button")
                }
                
                NavigationLink("Glass Button") {
                    GlassButton("Glass Tap") {}
                        .padding()
                        .navigationTitle("Glass Button")
                }
                
                NavigationLink("Neumorphic Button") {
                    NeumorphicButton("Soft Touch") {}
                        .padding()
                        .navigationTitle("Neumorphic Button")
                }
            
                NavigationLink("3D Tap Button") {
                    Tap3DButton("Tap Me") {}
                        .padding()
                        .navigationTitle("3D Tap Button")
                }
            }
            .navigationTitle("🎨 Button Designs")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    ContentView()
}
