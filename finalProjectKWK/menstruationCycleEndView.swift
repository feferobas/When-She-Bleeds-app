//
//  secondView.swift
//  calendar try
//
//  Created by Cristiane Andrade on 17/07/23.
//

import SwiftUI

struct menstruationCycleEndView: View {
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
                Text ("Select the date your last menstruation ended:  \(end)")
                HStack{
                    Spacer()
                    NavigationLink(destination: futureMenstruationCycleView(summary: "", start: start, end: end, endDate: datesEnd)) {
                        Text(Image(systemName: "arrowshape.turn.up.right.fill"))
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

struct menstruationCycleEndView_Previews: PreviewProvider {
    static var previews: some View {
        menstruationCycleEndView(start: "")
    }
}

