//
//  PrimaryButton.swift
//  swiftui-buttons-cookbook
//
//  Created by Haider Ashfaq on 20/04/2025.
//

import Foundation
import SwiftUI

// MARK: - PrimaryButton

/// A bold, rounded primary action button.
///
/// ```swift
/// PrimaryButton(title: "Continue") {
///     print("Tapped")
/// }
/// ```
///
/// - Parameters:
///   - title: The button's title text.
///   - action: Closure executed when tapped.
///   - backgroundColor: Background color of the button (default: .accentColor).
///   - cornerRadius: Corner radius of the button (default: 12).
public struct PrimaryButton: View {
    var title: String
    var action: () -> Void
    let backgroundColor: Color
    let cornerRadius: CGFloat
    
    public init(_ title: String, action: @escaping () -> Void, backgroundColor: Color = .accentColor, cornerRadius: CGFloat = 12) {
        self.title = title
        self.action = action
        self.backgroundColor = backgroundColor
        self.cornerRadius = cornerRadius
    }
    
    public var body: some View {
        Button(action: action) {
            Text(title)
                .fontWeight(.semibold)
                .foregroundColor(.white)
                .padding()
                .frame(maxWidth: .infinity)
                .background(backgroundColor)
                .cornerRadius(cornerRadius)
        }
        .buttonStyle(.plain)
    }
}

#Preview {
    VStack(spacing: 20) {
        PrimaryButton("Primary") { }
    }
    .padding()
    .navigationTitle("Primary Button")
}
