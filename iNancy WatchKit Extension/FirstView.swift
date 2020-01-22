//
//  ContentView.swift
//  PickerView WatchKit Extension
//
//  Created by Claudio De Simone on 21/01/2020.
//  Copyright © 2020 Claudio De Simone. All rights reserved.
//
//
//import SwiftUI
//
//
//struct FirstView: View {
//
//        let defaultsWeeks = UserDefaults.standard
//        let defaultsDays = UserDefaults.standard
//        @State var weeksIndex = 5
//        @State var daysIndex = 2
//
//
//
//        var body: some View {
//
//
//
//        VStack{
//            HStack{
//            Section{
//                Picker(selection: $weeksIndex, label: Text("Child weeks:")
//                    .font(.system(size: 10)).fontWeight(.bold)
//                    .minimumScaleFactor(0.001)
//                    .padding(.horizontal, 3)
//                    .colorInvert().background(/*@START_MENU_TOKEN@*/Color.green/*@END_MENU_TOKEN@*/)
//                    .cornerRadius(5)
//                    .scaledToFill()) {
//
//                    ForEach(0 ..< 41){
//                    Text("\($0) w")
//                    }
//                    .pickerStyle(WheelPickerStyle())
//                    }
//            }
//            Section{
//                Picker(selection: $daysIndex, label: Text("Child weeks:")
//
//                    .minimumScaleFactor(0.001)
//                    .padding(.horizontal, 3)
//                    .colorInvert().background(/*@START_MENU_TOKEN@*/Color.green/*@END_MENU_TOKEN@*/)
//                    .cornerRadius(5)
//                    .scaledToFill()) {
//
//                    ForEach(0 ..< 7){
//                    Text("\($0) d")
//                    }
//                    .pickerStyle(WheelPickerStyle())
//                    }
//             }
//          }
//            Button(action: {
//                self.defaultsWeeks.set(self.weeksIndex,forKey: "weeks")
//                self.defaultsDays.set(self.daysIndex, forKey: "days")
////                let tempWeeks = self.defaultsWeeks.integer(forKey: "weeks")
////                let tempDays = self.defaultsDays.integer(forKey: "days")
////                print(tempWeeks)
////                print(tempDays)
//                }) {
//                    Text("Done")
//                }
//            }.padding(4).edgesIgnoringSafeArea(.bottom)
//
//         }
//}
//
//struct FirstView_Previews: PreviewProvider {
//    static var previews: some View {
//        FirstView()
//    }
//}
