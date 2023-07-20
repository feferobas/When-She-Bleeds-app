//
//  PolicyView.swift
//  finalProjectKWK
//
//  Created by scholar on 7/20/23.
//

import SwiftUI
import MessageUI
struct PolicyPage: View {
    var body: some View {
        ZStack{
            NavigationStack{
                VStack{
                    Text("Contact your policy maker:")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                    Image("tampons")
                        .resizable()
                        .frame(width:310,height:310)
                        .cornerRadius(20)
                    NavigationLink(destination: EmailView1()) {
                        Text("Email United States Policy Makers")
                    }
                    NavigationLink(destination: EmailView2()) {
                        Text("Email Ghana Policy Makers")
                    }
                    NavigationLink(destination: EmailView3()) {
                        Text("Email Jamaica Policy Makers")
                    }
                }
                
            }
        }
    }
}
struct PolicyPage_Previews: PreviewProvider {
    static var previews: some View {
        PolicyPage()
    }
}
