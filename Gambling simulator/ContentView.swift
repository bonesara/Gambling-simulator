//
//  ContentView.swift
//  Gambling simulator
//
//  Created by Rishi on 31/8/26.
//
// no code here is fully made by ai
// not the whole thing
import SwiftUI
struct ContentView: View {
    @State private var Money: Double = 500
    @State private var gambleAmount: Double = 0
    @State private var resultMessage: String = "Roll to see your result!"
    var body: some View {
        TabView{
            Tab("Gamble", systemImage: "die.face.4"){
                VStack {
                    Image(systemName: "die.face.5")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                        .font(.system(size: 100))
                    // type amount to gamble
                    Text("   Let's see the luck you've giat")
                    Text("How much do you want to gamble?")
                        .font(.system(size: 22))
                        .padding()
                    TextField("Type something here...", value: $gambleAmount, format: .number)
                        .textFieldStyle(.roundedBorder)
                        .font(.system(size: 30))
                    // Gamble code
                    Button("Gamble 🎲") {
                        //if not enough money
                        if Money < gambleAmount {
                            resultMessage = "You don't have enough money to gamble!"
                            return
                        } else if Money >= gambleAmount {
                            Money -= gambleAmount
                            let change = (gambleAmount * Double.random(in: -1.0...1.0)).rounded(toPlaces: 1)
                            Money = (Money + change).rounded(toPlaces: 2)
                            resultMessage = change >= 0 ? "You won \(change)!" : "You lost \(abs(change))!"
                            Money = (Money + (gambleAmount * Double.random(in: -1.0...3.0))).rounded(toPlaces: 2)
                        }
                    }
                }
                .font(Font.system(size: 50))
                .foregroundStyle(Color.red)
                .background(Color.blue)
                .cornerRadius(20)
                //Announce
                Text(resultMessage)
                    .foregroundColor(resultMessage.contains("won") ? .green : .red)
                    .font(.system(size: 30))
                Text("Money:")
                    .font(.system(size: 30))
                    .foregroundStyle(Color(red: 0.95, green: 0.77, blue: 0.06))
                Text("$\(String(format: "%.2f", Money))💰")
                    .font(.system(size: 40))
                    .foregroundStyle(Color(red: 0.95, green: 0.77, blue: 0.06))
            }
            Tab("Add", systemImage: "die"){
                
            }
        }
        .padding()
    }
}

extension Double {
    func rounded(toPlaces places: Int) -> Double {
        let divisor = pow(10.0, Double(places))
        return (self * divisor).rounded() / divisor
    }
}
#Preview {
    ContentView()
}
