//
//  SettingView.swift
//  iNancy WatchKit Extension
//
//  Created by Claudio De Simone on 21/01/2020.
//  Copyright © 2020 Massimo Maddaluno. All rights reserved.
//

import SwiftUI
import UserNotifications

struct SettingView: View {
    @State private var weeksIndex = 0
    @State private var daysIndex = 0
    var defaultweeks = UserDefaults.standard
//    var defaultdays = UserDefaults.standard
   let title = "It's time to train"

    let message = "come and train"
    @State var alert = false
    var rootView = SectionList()
    var body: some View {
        VStack{
        HStack{
            Picker(selection: $weeksIndex , label: Text("weeks:")
                .font(.system(size: 12)).fontWeight(.bold)
                .minimumScaleFactor(0.001)
                .padding(.horizontal, 2)
                .scaledToFill()){
                     ForEach(0 ..< 41){
                         Text("\($0) w")
                     }
                      .pickerStyle(WheelPickerStyle())
                 }
               
            Picker(selection: $daysIndex, label: Text("days:")
                .font(.system(size: 12)).fontWeight(.bold)
                .minimumScaleFactor(0.001)
                .padding(.horizontal, 2)
                .scaledToFill()){
                   ForEach(0 ..< 7){
                       Text("\($0) d")
                   }
                    .pickerStyle(WheelPickerStyle())
            }
        }
            Button(action:{
                self.defaultweeks.set(self.weeksIndex, forKey: "week")
                self.defaultweeks.set(self.daysIndex, forKey: "days")
//                UNUserNotificationCenter.current().requestAuthorization(options: [.alert,.sound,.badge]) { (status, _) in
//                    if status {
//
//                        //contenuto della notifica
//                        let content = UNMutableNotificationContent()
//                        content.title = self.title
//                        content.body = self.message
//                        content.sound = UNNotificationSound.default
//                        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 15.0, repeats: false)
//
//                        let request = UNNotificationRequest(identifier: "noti", content: content, trigger: trigger)
//                        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
//                        HostingController.init(self.rootView)
//                    }
//                    self.alert.toggle()
//                    }
                
            }) {
        Text("Done")
        }
        }.edgesIgnoringSafeArea(.bottom)
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SectionList()
    }
}
