//
//  ContentView.swift
//  donatiePage
//
//  Created by scholar on 7/19/23.
//

import SwiftUI
struct donationView: View {
    private let adaptiveColumns = [GridItem(.adaptive(minimum: 170))]
    var body: some View {
            NavigationView{
                ZStack(alignment: .top){
                        Rectangle()
                            .foregroundColor(Color(hue: 0.029, saturation: 0.379, brightness: 0.856, opacity: 0.652))
                            .ignoresSafeArea()
                ScrollView{
                    
                    LazyVGrid(columns:adaptiveColumns, spacing:20){
                        Group{
                            Image("PeriodImg1")
                                .resizable()
                                .frame(width:310, height:300)
                                .cornerRadius(20)
                            Text("Pad Project")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                            Link("Donate to Period.Org", destination: URL(string:"https://fundraise.givesmart.com/vf/PADPROJECT")!)}
                        Group{
                            Image("PeriodImg2")
                                .resizable()
                                .frame(width:310, height:200)
                                .cornerRadius(20)
                            Text("Period.Org")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                            Link("Donate to Pad Project", destination: URL(string:"https://period.org/donate")!)}
                        Group{
                            Image("PeriodImg3")
                                .resizable()
                                .frame(width:310, height:200)
                                .cornerRadius(20)
                            Text("Fluxo Sem Tabu")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                            Link("Donate to Fluxo Sem Tabu", destination: URL(string:"https://paybox.doare.org/paybox?lang=br&currency=BRL&orgId=f96e3652-e63c-11eb-b3b5-0605af2f3d01&campaignAmbassadorId=undefined&values=30,50,150,300,500&amount=false&showCurrency=0&newsletter=0&subscribe=0&subscriptionAmount=0&showSubscription=1&referer=https:%2F%2Fwww.fluxosemtabu.com%2F")!)}
                        Group{Image("PeriodImg4")
                                .resizable()
                                .frame(width:310, height:200)
                                .cornerRadius(20)
                            Text("Absorvendo amor")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                            Link("Donate to Absorvendo Amor", destination: URL(string:"https://www.vakinha.com.br/vaquinha/absorvendo-amor-coronavirus")!)}
                        Group{
                            Image("PeriodProject")
                                .resizable()
                                .frame(width:310, height:200)
                                .cornerRadius(20)
                            Text("Period Project")
                                .font(.largeTitle)
                                .fontWeight(.bold)
                            Link("Donate to the Period Project", destination: URL(string:"https://crm.bloomerang.co/HostedDonation?ApiKey=pub_9da2b2d7-d2fa-11e8-94a1-0a7fa948a058&WidgetId=1986560")!)
                        }
                    }
                    
                    .navigationTitle("Donate!")
                    .frame(width:310)
                    .padding()
                    .background(Color.white)
                    .cornerRadius(20)
                }
            }
        }
    }
}
struct donationView_Previews: PreviewProvider {
    static var previews: some View {
        donationView()
    }
}

