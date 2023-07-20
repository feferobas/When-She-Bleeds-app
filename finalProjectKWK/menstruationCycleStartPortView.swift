//
//  ContentView.swift
//  calendar try
//
//  Created by Cristiane Andrade on 17/07/23.
//

import SwiftUI

struct menstruationCycleStartPortView: View {
    @Environment(\.calendar) var calendar
    @State var datesStart: Set<DateComponents> = []
       // @State var start: String
       var body: some View {
        NavigationStack {
            
            VStack {
                Text("O seu ciclo menstrual")
                MultiDatePicker("Select the date your last mesntruation started:", selection: $datesStart)
                let start = summary
              //  self.start = summary
             
                Spacer()
                Text ("Selecione a data de início da sua última menstruação:  \(start)")
                Spacer()
                HStack {
                    Spacer()
                    NavigationLink(destination: menstruationCycleEndPortView(start: start) ) {
                        Text(                Image(systemName: "arrowshape.turn.up.right.fill")
)
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
struct menstruationCycleStartPortView_Previews: PreviewProvider {
    static var previews: some View {
        menstruationCycleStartPortView()
    }
}


