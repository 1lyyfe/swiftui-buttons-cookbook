//
//  Tap3DButton.swift
//  swiftui-buttons-cookbook
//
//  Created by Haider Ashfaq on 20/04/2025.
//

import SwiftUI

/// A button with a 3D pressed effect using scale and shadow.
///
/// ```swift
/// Tap3DButton(title: "Tap Me") {
///     print("Tapped")
/// }
/// ```
///
/// - Parameters:
///   - title: The button's title text.
///   - action: Closure executed when tapped.
public struct Tap3DButton: View {
    public var title: String
    public var action: () -> Void
    
    public init(_ title: String, action: @escaping () -> Void) {
        self.title = title
        self.action = action
    }
    
    public var body: some View {
        Button(action: action) {
            Text(title)
                .fontWeight(.semibold)
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.accentColor)
                .foregroundColor(.white)
                .cornerRadius(12)
        }
        .buttonStyle(ThreeDButtonStyle())
    }
}

/// A button style that creates a 3D pressed effect using scale, shadow, and rotation.
public struct ThreeDButtonStyle: ButtonStyle {
    public func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .scaleEffect(configuration.isPressed ? 0.95 : 1)
            .shadow(color: .black.opacity(0.2),
                    radius: configuration.isPressed ? 2 : 6,
                    x: 0,
                    y: configuration.isPressed ? 1 : 6)
            .rotation3DEffect(
                .degrees(configuration.isPressed ? 8 : 0),
                axis: (x: 1, y: 0, z: 0),
                anchor: .center
            )
    }
}

#Preview {
    VStack(spacing: 20) {
        Tap3DButton("Primary") { }
    }
    .padding()
    .navigationTitle("Primary Button")
}
