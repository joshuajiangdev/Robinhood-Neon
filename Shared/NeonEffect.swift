//
//  NeonEffect.swift
//  Robinhood-Neon
//
//  Created by Joshua Jiang on 4/24/22.
//

import SwiftUI

struct NeonEffect: ViewModifier {
    
    internal init(startingColor: Color) {
        self.startingColor = startingColor
    }
    
    private let startingColor: Color
    
    func body(content: Content) -> some View {
        content
            .shadow(color: .white, radius: 0.2, x: 0, y: 0)
            .shadow(color: .white, radius: 0.4, x: 0, y: 0)
            .shadow(color: .white, radius: 0.6, x: 0, y: 0)
            .shadow(color: self.startingColor, radius: 1.5, x: 0, y: 0)
            .shadow(color: self.startingColor, radius: 2.3, x: 0, y: 0)
            .shadow(color: self.startingColor, radius: 3.6, x: 0, y: 0)
    }
}

struct NeonEffect_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            RobinhoodLogo()
                .frame(width: 100, height: 150)
//                .modifier(NeonEffect(startingColor: Color.init(red: 57/255, green: 255/255, blue: 20/255)))
        }

    }
}
