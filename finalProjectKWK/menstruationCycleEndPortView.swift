//
//  secondView.swift
//  calendar try
//
//  Created by Cristiane Andrade on 17/07/23.
//

import SwiftUI

struct menstruationCycleEndPortView: View {
    @Environment(\.calendar) var calendar
    @State var datesEnd: Set<DateComponents> = []
    @State var start: String
    var body: some View {
        NavigationStack{
            VStack {
                MultiDatePicker("Select your preferred dates", selection: $datesEnd)
              
                let end = summary
               //Text(summary)
                //Text("your menstruation started \(start)")
                Text ("Selecione a data de término da sua última menstruação:  \(end)")
                HStack{
                    Spacer()
                    NavigationLink(destination: futureMenstruationCyclePortView(summary: "", start: start, end: end, endDate: datesEnd)) {
                        Image(systemName: "arrowshape.turn.up.right.fill")
                            .foregroundColor(Color.red)
                        
                             }
                             }
                            .padding()
                }
            }
        
        var summary: String {
            datesEnd.compactMap { components in
                calendar.date(from: components)?.formatted(date: .long, time: .omitted)
            }.formatted()
        }
    }
}

struct menstruationCycleEndPortView_Previews: PreviewProvider {
    static var previews: some View {
        menstruationCycleEndPortView(start: "")
    }
}


