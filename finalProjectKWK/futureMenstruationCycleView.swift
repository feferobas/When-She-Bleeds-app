//
//  thirdView.swift
//  calendar try
//
//  Created by Cristiane Andrade on 17/07/23.
//

import SwiftUI
//import Foundation
struct futureMenstruationCycleView: View {
    @State var summary: String
    @State var start: String
    @State var end : String
    @State var endDate: Set<DateComponents>
    var futureDateString: String {
        let date = Calendar.current.date(from: endDate.removeFirst())!
        print(date)
        var dateComponent = DateComponents()
        dateComponent.day = 28
        let futureDate = Calendar.current.date(byAdding: dateComponent, to: date)
        print(futureDate!)
        let dateFormatter = DateFormatter()

        // Set Date Format
        dateFormatter.dateFormat = "MM/dd/YY"

        // Convert Date to String
       return dateFormatter.string(from: futureDate!)
   // return futureDate!.formatted()
    }
   
    var body: some View {
        ZStack(alignment: .top){
                Rectangle()
                    .foregroundColor(Color(hue: 0.029, saturation: 0.379, brightness: 0.856, opacity: 0.652))
                    .ignoresSafeArea()
        VStack {
            Spacer()
            HStack {
                Spacer()
                Text("Your last menstruation started:")
                Spacer()
                Text(start)
                Spacer()
            } .padding()
            Spacer()
            HStack {
                Spacer()
                Text( "Your last menstruation ended: ")
                Spacer()
                Text(end)
                Spacer()
            } .padding()
            Spacer()
            HStack {
                Spacer()
                Text("Your next menstruation will start on:")
                Spacer()
                Text(futureDateString)
                Spacer()
            } .padding()
            Spacer()
        }
    }
        }
       
      //  Text(datesEnd)
        
    }


struct futureMenstruationCycleView_Previews: PreviewProvider {
    static var previews: some View {
        futureMenstruationCycleView(summary: "", start: "", end: "", endDate: Set<DateComponents>())
    }
}

