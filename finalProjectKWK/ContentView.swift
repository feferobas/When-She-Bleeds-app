//
//  ContentView.swift
//  intro view when she bleeds
//
//  Created by Cristiane Andrade on 19/07/23.
//

import SwiftUI
import UIKit
struct ContentView: View {
    /*   @objc func fireTimer() {
     print("Timer fired!")
     }
     let timer1 = Timer.scheduledTimer(timeInterval: 1.0,
     target: Self.self,
     selector: #selector(fireTimer), userInfo: nil, repeats: false) */
    
    @State private var timeOut = ""
    @State private var start = ""
    @State private var showAnimatedText = false
    private let adaptiveColumns = [GridItem(.adaptive(minimum: 170))]
    @Environment(\.calendar) var calendar
    @State var datesStart: Set<DateComponents> = []
    var body: some View {
        NavigationStack{
            TabView {
                ZStack(alignment: .top){
                    Rectangle()
                        .foregroundColor(Color(hue: 0.029, saturation: 0.352, brightness: 0.971, opacity: 0.652))
                        .ignoresSafeArea()
                    VStack {
                        HStack {
                            Spacer()
                            NavigationLink(destination: portugueseButton()) {
                                Text("Português")
                                    
                            } .padding()
                        }
                        Spacer()
                        Image ("padsimage")
                        
                        var timer = Timer.scheduledTimer(withTimeInterval: 5.0, repeats: false) { timer in
                          timeOut = "Welcome"
                            
                        }
                        Spacer()
                        if timeOut == "Welcome" {
                            Text ("WHEN SHE BLEEDS")
                                .font(.largeTitle)
                                .foregroundColor(Color.red)
                       //     Button("START") {
                         //       start = "start"
                         //   }
                        }
                        Spacer()
                        
                    }
                }
                   . tabItem {
                    Image (systemName: "restart.circle.fill")
                    Text ("Main page")
                    }
                informationView()
                    .tabItem{
                        Image(systemName: "book")
                        Text("Information")
                    }
                donationView()
                    .tabItem{
                        Image(systemName: "dollarsign.arrow.circlepath")
                        Text("Donate")
                    }
               menstruationCycleStartView()
                    .tabItem{
                        Image(systemName: "calendar")
                        Text("Calendar")
                    }
               quizView()
                    .tabItem{
                        Image(systemName: "questionmark.app")
                        Text("Quiz")

                    }
               PolicyPage()
                    .tabItem{Image(systemName: "envelope")
                        Text("Email a policy")
                        
                    }
           
          /*  ZStack(alignment: .top){
                Rectangle()
                    .foregroundColor(Color(hue: 0.029, saturation: 0.352, brightness: 0.971, opacity: 0.652))
                    .ignoresSafeArea()
                VStack {
                    HStack {
                        Spacer()
                        NavigationLink(destination: portugueseButton()) {
                            Text("Português")
                                
                        } .padding()
                    }
                    Spacer()
                    Image ("padsimage")
                    
                    var timer = Timer.scheduledTimer(withTimeInterval: 5.0, repeats: false) { timer in
                      timeOut = "Welcome"
                        
                    }
                    Spacer()
                    if timeOut == "Welcome" {
                        Button("START") {
                            start = "start"
                        }
                    }
                    
                    Spacer()
                }
            } */
        }
     
    }
}
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
