//
//  EmailView1.swift
//  finalProjectKWK
//
//  Created by scholar on 7/20/23.
//

import Foundation
import Foundation
import SwiftUI
import UIKit
import MessageUI
struct EmailView1: View {
    @State var result: Result<MFMailComposeResult, Error>? = nil
    @State var isShowingMailView = false
    var body: some View {
       // Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        VStack {
            if MFMailComposeViewController.canSendMail() {
                Button("Show mail view") {
                    self.isShowingMailView.toggle()
                }
            } else {
                Text("Can't send emails from this device")
            }
            if result != nil {
                Text("Result: \(String(describing: result))")
                    .lineLimit(nil)
            }
        }
        .sheet(isPresented: $isShowingMailView) {
            MailView(/*isShowing: self.$isShowingMailView,*/ result: self.result)
        }

    }
    }


struct EmailView1_Previews: PreviewProvider {
    static var previews: some View {
        EmailView1()
    }
}


