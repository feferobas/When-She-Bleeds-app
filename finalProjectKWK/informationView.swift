//
//  InformationPage.swift
//  quizApp
//
//  Created by Laiba Jalil on 7/20/23.
//

import SwiftUI

struct informationView: View {
    @State private var showAnimatedText = false

    var body: some View {
        ZStack {
            Rectangle()
                .foregroundColor(Color(hue: 0.029, saturation: 0.352, brightness: 0.971, opacity: 0.652))
                .ignoresSafeArea()

            ScrollView {
                VStack(alignment: .leading, spacing: 20) {
                    Text("What is Menstruation or a Period?")
                        .font(.custom("AlegreyaSans-Black", size: 32))
                        .bold()
                        .foregroundColor(Color(hue: 1.0, saturation: 0.977, brightness: 0.906, opacity: 0.652))

                    Text("Menstruation, also known as a menstrual cycle or period, is a natural biological process that occurs in most females of reproductive age. It involves the shedding of the uterine lining, resulting in vaginal bleeding, which typically lasts for several days each month. Menstruation is a crucial aspect of a woman's reproductive health and is necessary for the possibility of pregnancy.")
                        .font(.custom("BreeSerif-Regular", size: 17))
                        .foregroundColor(Color(hue: 0.977, saturation: 0.995, brightness: 0.001))

                    Image("Period Poverty")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.horizontal)

                    Text("What is Menstrual Poverty?")
                        .font(.custom("AlegreyaSans-Black", size: 32))
                        .bold()
                        .foregroundColor(Color(hue: 1.0, saturation: 0.977, brightness: 0.906, opacity: 0.652))

                    Text("Menstrual poverty, unfortunately, is a widespread issue that refers to the lack of access to essential menstrual hygiene products, proper sanitation facilities, and accurate information about menstrual health. This problem affects millions of women and girls worldwide, especially those living in low-income communities and marginalized populations. Due to financial challenges, many individuals struggle to afford or access items like sanitary pads, tampons, or menstrual cups, which are crucial for managing menstruation hygienically. As a result, some resort to unhygienic and unsafe practices during their periods, which can be harmful to their health and well-being.")
                        .font(.custom("BreeSerif-Regular", size: 17))
                        .foregroundColor(Color(hue: 0.977, saturation: 0.995, brightness: 0.001))
                    
                    Image("World")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .padding(.horizontal)

                    if showAnimatedText {
                        VStack(alignment: .leading, spacing: 10) {
                            Text("THE TABOO")
                                .font(.custom("Sansita-Regular", size: 40))
                                .bold()
                                .foregroundColor(Color(hue: 1.0, saturation: 0.977, brightness: 0.906))
                        
                        
                        Text("Menstruation is usually seen as a topic to be avoided and something disgusting. Yet 100% of the population need that women menstruate")
                                .foregroundColor(.black)
                            
        
                            Text("But Did You Know?")
                                .font(.custom("Sansita-Regular", size: 36))
                                .bold()
                                .foregroundColor(Color(hue: 1.0, saturation: 0.977, brightness: 0.906))
                            Text("$10,000 is the estimated cost of lifetime periods products (assuming that the average menstruation is 36 years)")
                                .foregroundColor(.black)
                            Text("8 out of 10 women had already used other items instead of pads, such as old rags, cloths, bread, and unhygienic products, putting their health at risk")
                                .foregroundColor(.black)
                            Text("THE EFFECTS ON EDUCATION")
                                .font(.custom("Sansita-Regular", size: 36))
                                .bold()
                                .foregroundColor(Color(hue: 1.0, saturation: 0.977, brightness: 0.906))
                            Text("3 months of school missed per year")
                                .foregroundColor(.black)
                            Text("1 out of 4 students struggle to afford menstrual products")
                                .foregroundColor(.black)
                            Text("In Brazil, 62% of girls had already missed school")
                                .foregroundColor(.black)
                            Text("5.5 million women had already missed work due to menstrual poverty")
                                .foregroundColor(.black)
                        }
                        .padding()
                        .transition(.opacity)
                        .animation(.easeInOut(duration: 0.5))
                    }
                }
                .padding()
            }
        }
        .onAppear {
            showAnimatedText = true
        }
    }
}

struct informationView_Previews: PreviewProvider {
    static var previews: some View {
        informationView()
    }
}


