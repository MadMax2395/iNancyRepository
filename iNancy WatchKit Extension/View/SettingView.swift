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
    @State var hoursString : String!
    @State var minuteString : String!
    @State var dateComponents = DateComponents()
    
    @State private var hoursIndex = 0
    @State private var minutesIndex = 0
    var defaultHours = UserDefaults.standard
    var defaultMinutes = UserDefaults.standard
    @State private var showingAlert = false
    //    var defaultdays = UserDefaults.standard
    let title = "Have you already trained today?"
    
    let message = "Come and train"
    @State var alert = false
    
    
    var body: some View {
        VStack{
            HStack{
                Picker(selection: $hoursIndex , label: Text("Hours:")
                    .font(.system(size: 12)).fontWeight(.bold)
                    .minimumScaleFactor(0.001)
                    .padding(.horizontal, 2)
                    .scaledToFill()){
                        ForEach(0 ..< 24){
                            Text("\($0) h")
                        }
                        .pickerStyle(WheelPickerStyle())
                }
                
                Picker(selection: $minutesIndex, label: Text("Minutes:")
                    .font(.system(size: 12)).fontWeight(.bold)
                    .minimumScaleFactor(0.001)
                    .padding(.horizontal, 2)
                    .scaledToFill()){
                        ForEach(0 ..< 60){
                            Text("\($0) m")
                        }
                        .pickerStyle(WheelPickerStyle())
                }
            }
            Button(action:{
                //                da vedere per notificbhe
                self.defaultHours.set(self.hoursIndex, forKey: "hours")
                self.defaultMinutes.set(self.minutesIndex, forKey: "minutes")
                self.dateComponents.hour = self.hoursIndex
                self.dateComponents.minute = self.minutesIndex
                self.showingAlert = true
                
                if (self.minutesIndex < 10){
                    self.minuteString = "0\(self.minutesIndex)"
                }
                else {self.minuteString = String(self.minutesIndex)}
               
                if (self.hoursIndex < 10){
                    self.hoursString = "0\(self.hoursIndex)"
                }
                else {self.hoursString = String(self.hoursIndex)}
                UNUserNotificationCenter.current().requestAuthorization(options: [.alert,.sound,.badge]) { (status, _) in
                    if status {
                        
                        //contenuto della notifica
                        let content = UNMutableNotificationContent()
                        content.title = self.title
                        content.body = self.message
                        content.sound = UNNotificationSound.default
                        let trigger = UNCalendarNotificationTrigger(dateMatching: self.dateComponents, repeats: true)
                        let request = UNNotificationRequest(identifier: "noti", content: content, trigger: trigger)
                        UNUserNotificationCenter.current().add(request, withCompletionHandler: nil)
                    }
                    self.alert.toggle()
                }
                
                }, label:{
                    Text("Done")
                })
            .alert(isPresented: $showingAlert) {
                Alert(title: Text("Notification Activated"), message: Text("You will recive a notification at \(self.hoursString):\(self.minuteString)"), dismissButton: .default(Text("Dismiss")))
            }
                //                background del button
                .background(Color.init(red: 233/255.0, green: 0/255.0, blue: 132/255.0))
        }.edgesIgnoringSafeArea(.bottom)
    }
}

struct SettingView_Previews: PreviewProvider {
    static var previews: some View {
        SettingView()
    }
}
