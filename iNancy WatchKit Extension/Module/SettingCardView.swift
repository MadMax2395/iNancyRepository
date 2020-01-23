//
//  SettingCardView.swift
//  iNancy WatchKit Extension
//
//  Created by Alessio Di Matteo on 23/01/2020.
//  Copyright © 2020 Massimo Maddaluno. All rights reserved.
//

import SwiftUI

struct SettingCardView: View {
    var body: some View {
        

        //                .foregroundColor(Color.clear)

                    
        //                    .cornerRadius(20)

        //                     .foregroundColor(Color.init(red: 233/255.0, green: 0/255.0, blue: 132/255.0))
                    
                    
        //                   .overlay(
                    HStack{
                        
                        Text("Setting")
                            .font(.caption)
                            .padding(.bottom, 10)
                            .padding(.trailing, 2)
        //                    .foregroundColor(Color.init(red: 233/255.0, green: 0/255.0, blue: 132/255.0))
                        
                        Spacer()
                        
                        
                        Image("AppIcon")
                            .resizable()
                            
                            .frame(width: 50, height: 60, alignment: .center)
                        
                
                }
                
        //                   )

            }
    }


struct SettingCardView_Previews: PreviewProvider {
    static var previews: some View {
        SettingCardView()
    }
}
