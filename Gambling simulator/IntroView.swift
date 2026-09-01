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
    var body: some View {
        NavigationStack{
            VStack(spacing: 24){
                Image(systemName: "die.face.5")
                    .scaledToFill()
                    .frame(width: 100, height: 100)
                    .font(.largeTitle)
                    .scaleEffect(scale)
                    .animation(.easeInOut(duration: 1), value: scale)
                Text("WARM WELCOME TO GAMBLING SIMULATOR")
                Text("Time to  put your money")
                NavigationLink(){
                    ContentView()
                } label: {
                    Text("So Lock In 🔏")
                        .foregroundColor(.green)
                    //
                    //            }
                }
                .navigationTitle("Helllllloooooo Customer!")
            }
            .onAppear {
                scale = 1.5
            }
        }
    }
}

#Preview {
    IntroView()
}
