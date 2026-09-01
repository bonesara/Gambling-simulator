//
//  IntroView.swift
//  Gambling simulator
//
//  Created by Rishi on 1/9/26.
//

import SwiftUI

struct IntroView: View {
    @State var scale = 1.0
    @State var rotate = 0.0
    @State private var showLaunch: Bool = false
    
    var body: some View {
            VStack(spacing: 24){
                Text("Welcome")
                    .font(.largeTitle)
                    .bold()
                Spacer()
                Image(systemName: "die.face.5")
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .font(.largeTitle)
                    .scaleEffect(scale)
                    .animation(.easeInOut(duration: 1), value: scale)
                Text("WARM WELCOME TO GAMBLING SIMULATOR")
                    .bold()
                Text("Time to put in your money!")
                    .bold()
                Button{
                    showLaunch = true
                } label: {
                    Text("So Lock In 🔏")
                        .bold()
                        .foregroundColor(Color(red: 0.0, green: 0.4, blue: 0.0))
                        .font(.title)
                }
                .background(Color(red: 0.95, green: 0.77, blue: 0.06))
                .clipShape(.rect(cornerRadius: 10))
                Spacer()
            }
            .onAppear {
                scale = 1.5
        }
            .fullScreenCover(isPresented: $showLaunch) {
                ContentView()
            }
    }
}

#Preview {
    IntroView()
}
