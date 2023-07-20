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
        NavigationStack {
            ZStack {
                Rectangle()
                    .foregroundColor(Color(hue: 0.958, saturation: 0.193, brightness: 0.986))
                    .ignoresSafeArea()

                VStack {
                    Spacer()

                    Text("Como você está se sentindo?")
                        .font(.custom("fira sans condensed", size: 35))
                        .font(.title)
                        .foregroundColor(.black)

                    Text(getEmoji(for: Int(painLevel)))
                        .font(.system(size: 50))
                        .padding()
                        .foregroundColor(.white)

                    Slider(value: $painLevel, in: 1...10, step: 1)
                        .padding(.horizontal)
                        .accentColor(Color(#colorLiteral(red: 1, green: 0.4117647059, blue: 0.3803921569, alpha: 1))) // Pink slider color

                    Text("Nível de dor: \(Int(painLevel))")
                        .font(.headline)
                        .foregroundColor(.black)

                    Spacer()
                }
                .padding()

                VStack {
                    HStack {
                        Spacer()
                        NavigationLink(destination: menstruationCycleStartView()) {
                            Image(systemName: "arrow.right.circle.fill")
                                .resizable()
                                .frame(width: 32, height: 32)
                                .foregroundColor(.black)
                                .padding(.trailing, 16)
                                .padding(.top, 16)
                                .padding(.bottom, 8)
                        }

                    }
                    Spacer()
                }

                VStack {
                    HStack {
                        NavigationLink(destination: portugueseButton()) {
                            Image(systemName: "arrow.left.circle.fill")
                                .resizable()
                                .frame(width: 32, height: 32)
                                .foregroundColor(.black)
                                .padding(.leading, 16)
                                .padding(.top, 16)
                                .padding(.bottom, 8)
                    }
                        Spacer()
                    }
                    Spacer()
                }
            }
            
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

