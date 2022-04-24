//
//  ContentView.swift
//  Shared
//
//  Created by Joshua Jiang on 4/24/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            RobinhoodLogo()
                .frame(width: 100, height: 150)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
