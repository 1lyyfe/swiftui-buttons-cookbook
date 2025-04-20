//
//  NeumorphicButton.swift
//  swiftui-buttons-cookbook
//
//  Created by Haider Ashfaq on 20/04/2025.
//

import SwiftUI

/// A soft, light/dark shadowed neumorphic-style SwiftUI button.
///
/// ```swift
/// NeumorphicButton(title: "Soft Touch") {
///     print("Tapped")
/// }
/// ```
///
/// - Parameters:
///   - title: The button's title text.
///   - action: Closure executed when tapped.
public struct NeumorphicButton: View {
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
                .background(
                    Color(.systemGray6)
                        .cornerRadius(12)
                        .shadow(color: .white, radius: 6, x: -6, y: -6)
                        .shadow(color: .gray.opacity(0.4), radius: 6, x: 6, y: 6)
                )
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    VStack(spacing: 20) {
        NeumorphicButton("Title") { }
    }
    .padding()
    .navigationTitle("Primary Button")
}
