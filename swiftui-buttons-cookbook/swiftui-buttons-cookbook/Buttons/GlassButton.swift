//
//  GlassButton.swift
//  swiftui-buttons-cookbook
//
//  Created by Haider Ashfaq on 20/04/2025.
//

import SwiftUI

/// A glassmorphism-style SwiftUI button.
///
/// ```swift
/// GlassButton(title: "Glass Tap") {
///     print("Tapped")
/// }
/// ```
///
/// - Parameters:
///   - title: The button's title text.
///   - action: Closure executed when tapped.
public struct GlassButton: View {
    public var title: String
    public var action: () -> Void

    public init(_ title: String, action: @escaping () -> Void) {
        self.title = title
        self.action = action
    }

    public var body: some View {
        Button(action: action) {
            Text(title)
                .fontWeight(.medium)
                .padding()
                .frame(maxWidth: .infinity)
                .background(.ultraThinMaterial)
                .overlay(
                    RoundedRectangle(cornerRadius: 12)
                        .stroke(Color.white.opacity(0.2), lineWidth: 1)
                )
                .cornerRadius(12)
        }
        .buttonStyle(.plain)
    }
}


#Preview {
    VStack(spacing: 20) {
        GlassButton("Title") { }
    }
    .padding()
    .navigationTitle("Primary Button")
}
