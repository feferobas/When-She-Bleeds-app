//
//  ContentView.swift
//  quizApp
//
//  Created by Laiba Jalil on 7/19/23.
//

import SwiftUI

struct quizView: View {
    @State private var painLevel: Double = 5.0

    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color(hue: 0.022, saturation: 0.242, brightness: 0.97, opacity: 0.937))
                .ignoresSafeArea()

            VStack {
                Spacer()

                Text("How are you feeling today?")
                    .font(.custom("BreeSerif-Regular", size: 45))
                    .font(.title)
                    .foregroundColor(.black)

                Text(getEmoji(for: Int(painLevel)))
                    .font(.system(size: 50))
                    .padding()
                    .foregroundColor(.white)

                Slider(value: $painLevel, in: 1...10, step: 1)
                    .padding(.horizontal)
                    .accentColor(Color(#colorLiteral(red: 1, green: 0.4117647059, blue: 0.3803921569, alpha: 1)))

                Text("Pain Level: \(Int(painLevel))")
                    .font(.custom("BreeSerif-Regular", size: 25))
                    .font(.headline)
                    .foregroundColor(.black)

                Spacer()
                
        
                if (1...4).contains(Int(painLevel)) {
                    Text("Hang in there! You'll get through this.")
                        .font(.custom("BreeSerif-Regular", size: 20))
                        .foregroundColor(Color(hue: 0.567, saturation: 0.492, brightness: 0.551))
                        .padding()
                } else if (5...8).contains(Int(painLevel)) {
                    Text("Take it easy and rest. Things will get better.")
                        .font(.custom("BreeSerif-Regular", size: 20))
                        .foregroundColor(Color(hue: 0.342, saturation: 0.484, brightness: 0.442))
                        .padding()
                } else if (9...10).contains(Int(painLevel)) {
                    Text("I'm so sorry you're feeling this way. Seek medical attention if the pain is exceeding and take care.")
                        .font(.custom("BreeSerif-Regular", size: 20))
                        .foregroundColor(Color(hue: 0.001, saturation: 0.933, brightness: 0.938))
                        .padding()
                }
            }
            .padding()
        }
        .preferredColorScheme(.dark)
    }

    func getEmoji(for painLevel: Int) -> String {
        switch painLevel {
        case 1...3:
            return "😐"
        case 4...6:
            return "😕"
        case 7...8:
            return "😣"
        case 9...10:
            return "😫"
        default:
            return "😐"
        }
    }
}

struct quizView_Previews: PreviewProvider {
    static var previews: some View {
        quizView()
    }
}

