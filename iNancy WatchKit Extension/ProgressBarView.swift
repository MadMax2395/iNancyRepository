//
//  ProgressBarView.swift
//  iNancy WatchKit Extension
//
//  Created by Simone Punzo on 21/01/2020.
//  Copyright © 2020 Massimo Maddaluno. All rights reserved.
//

import SwiftUI

struct ProgressionBarView: View {
    @Binding var value:CGFloat
    
    var body: some View {
        ZStack {
            Circle()
                .trim(from: 0, to: value)
                .stroke(LinearGradient.init(gradient: Gradient.init(colors: [Color.init(red: 233/255.0, green: 0/255.0, blue: 123/255.0), Color.init(red: 235/255.0, green: 74/255.0, blue: 159/255.0)]), startPoint: .top, endPoint: .bottom), lineWidth: 10)
//                .stroke(Color.init(red: 233/255.0, green: 0/255.0, blue: 123/255.0), lineWidth:10)
                
                .frame(width:150)
                .rotationEffect(Angle(degrees:-90))
//            Text(getPercentage(value))
            if !checkPercentage(value){
                Image("turtlerock")
                .resizable()
                .frame(width: 100, height: 80, alignment: .bottom)
            }
            else{

                Text("Done!")
            }
            
        }
    }
    
    //Inutile
//    func getProgressBarWidth(geometry:GeometryProxy) -> CGFloat {
//        let frame = geometry.frame(in: .global)
//        return frame.size.width * value
//    }
    
    func getPercentage(_ value:CGFloat) -> String {
        let intValue = Int(ceil(value * 100))
        if intValue > 100 {
            return "100 %"
        }
        
        else{
           return "\(intValue) %"
        }
    }
    
    
    func checkPercentage(_ value:CGFloat) -> Bool {
        let intValue = Int(ceil(value * 100))
        if intValue >= 100 {
            print("ci sonoooooo")
            return true
        }
        
        else{
           return false
        }
    }
    
    
}
