//
//  GreetView.swift
//  MyLibrary
//
//  Created by Dhanalakshmi on 04/06/25.
//

import SwiftUI

public struct CardView<Content: View>: View {
    let content: Content
    var backgroundColor: Color
    var cornerRadius: CGFloat
    var shadowRadius: CGFloat

    public init(
        backgroundColor: Color = .white,
        cornerRadius: CGFloat = 12,
        shadowRadius: CGFloat = 4,
        @ViewBuilder content: () -> Content
    ) {
        self.content = content()
        self.backgroundColor = backgroundColor
        self.cornerRadius = cornerRadius
        self.shadowRadius = shadowRadius
    }

    public var body: some View {
        content
            .padding()
            .background(backgroundColor)
            .cornerRadius(cornerRadius)
            .shadow(color: Color.black.opacity(0.1), radius: shadowRadius, x: 0, y: 2)
            .padding(.horizontal)
    }
}
