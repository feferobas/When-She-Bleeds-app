//
//  ContentView.swift
//  calendar try
//
//  Created by Cristiane Andrade on 17/07/23.
//

import SwiftUI

struct menstruationCycleStartView: View {
    @Environment(\.calendar) var calendar
    @State var datesStart: Set<DateComponents> = []
       // @State var start: String
       var body: some View {
          NavigationStack {
               VStack {
                   Text("Your menstruation cycle")
                   MultiDatePicker("Select the date your last mesntruation started:", selection: $datesStart)
                   let start = summary
                   //  self.start = summary
                   
                   Spacer()
                   Text ("Select the date your last menstruation started:  \(start)")
                   Spacer()
                   HStack {
                       Spacer()
                       NavigationLink(destination: menstruationCycleEndView(start: start) ) {
                        Image(systemName: "arrowshape.turn.up.right.fill")
                        
                       } .padding()
                   }
                   Spacer()
                   //Text(summary)
                   
               }
           }
        .padding()
    }

    var summary: String {
        datesStart.compactMap { components in
            calendar.date(from: components)?.formatted(date: .long, time: .omitted)
        }.formatted()
    }
}
struct menstruationCycleStartView_Previews: PreviewProvider {
    static var previews: some View {
        menstruationCycleStartView()
    }
}

