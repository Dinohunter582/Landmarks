//
//  Badge.swift
//  Landmarks
//
//  Created by Mark Leung Jr on 10/21/21.
//

import SwiftUI

struct Badge: View {
    var BadgeSymbols: some View {
        ForEach(0..<8) { index in
            RotatedBadgeSymbol(
                angle: .degrees(Double(index) / Double(8)) * 360
            )
        }
        .opacity(0.5)
    }
    var body: some View {
        
        ZStack {
            BadgeBackground()
            
            GeometryReader { geometry in
            BadgeSymbols
                    .scaleEffect(1.0 / 4.0, anchor: .top)
                    .position(x: geometry.size.width / 2.0, y: (3.0 / 4.0) * geometry.size.height)
            }
        }
        .scaledToFit()
    }
}

struct Badge_Previews: PreviewProvider {
    static var previews: some View {
        Badge()
    }
}
