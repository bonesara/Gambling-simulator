//
//  ContentView.swift
//  Gambling simulator
//
//  Created by Rishi on 31/8/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "die.face.5")
                .imageScale(.large)
                .foregroundStyle(.tint)
                .font(.system(size: 44))
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
