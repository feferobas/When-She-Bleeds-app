//
//  thirdView.swift
//  calendar try
//
//  Created by Cristiane Andrade on 17/07/23.
//

import SwiftUI
//import Foundation
struct futureMenstruationCyclePortView: View {
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
        dateFormatter.dateFormat = "dd/MM/YY"

        // Convert Date to String
       return dateFormatter.string(from: futureDate!)
   // return futureDate!.formatted()
    }
   
    var body: some View {
            VStack {
                Spacer()
                HStack {
                    Spacer()
                    Text("A sua última menstruação começou:")
                    Spacer()
                    Text(start)
                    Spacer()
                } .padding()
                Spacer()
                HStack {
                    Spacer()
                    Text( "A sua última menstruação terminou: ")
                    Spacer()
                    Text(end)
                    Spacer()
                } .padding()
                     Spacer()
                HStack {
                    Spacer()
                    Text("A sua próxima menstruação começará no dia:")
                    Spacer()
                    Text(futureDateString)
                    Spacer()
                } .padding()
                Spacer()
            }
        }
       
      //  Text(datesEnd)
        
    }


struct futureMenstruationCyclePortView_Previews: PreviewProvider {
    static var previews: some View {
        futureMenstruationCyclePortView(summary: "", start: "", end: "", endDate: Set<DateComponents>())
    }
}


