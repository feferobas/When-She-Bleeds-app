//
//  ContentView.swift
//  quizApp
//
//  Created by Laiba Jalil on 7/19/23.
//

import SwiftUI

struct quizPortView: View {
    @State private var painLevel: Double = 5.0

    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color(hue: 0.022, saturation: 0.242, brightness: 0.97, opacity: 0.937))
                .ignoresSafeArea()

            VStack {
                Spacer()

                Text("Como você está se sentindo hoje?")
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

                Text("Nível de dor: \(Int(painLevel))")
                    .font(.custom("BreeSerif-Regular", size: 25))
                    .font(.headline)
                    .foregroundColor(.black)

                Spacer()
                
        
                if (1...4).contains(Int(painLevel)) {
                    Text("Mantenha-se firme! Você consegue.")
                        .font(.custom("BreeSerif-Regular", size: 20))
                        .foregroundColor(Color(hue: 0.567, saturation: 0.492, brightness: 0.551))
                        .padding()
                } else if (5...8).contains(Int(painLevel)) {
                    Text("Pega leve e descanse. As coisas vão melhorar.")
                        .font(.custom("BreeSerif-Regular", size: 20))
                        .foregroundColor(Color(hue: 0.342, saturation: 0.484, brightness: 0.442))
                        .padding()
                } else if (9...10).contains(Int(painLevel)) {
                    Text("Eu sinto muito que você esteja se sentindo desse jeito. Procure um médico caso a dor piore e se cuide.")
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

struct quizPortView_Previews: PreviewProvider {
    static var previews: some View {
        quizPortView()
    }
}


