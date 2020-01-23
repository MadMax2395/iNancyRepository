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
//                            .foregroundColor(Color(red: 233/255.0, green: 0/255.0, blue: 132/255.0))
                            .padding(.bottom, 10)
                            .padding(.trailing, 2)
        //                    .foregroundColor(Color.init(red: 233/255.0, green: 0/255.0, blue: 132/255.0))
                        
                        Spacer()
                        
                        ZStack{
                        Image("settingRosa")
                            .resizable()
                            
                            .frame(width: 40, height: 40, alignment: .center)
                            
                            Image("settingBianco")
                            .resizable()
                            
                            .frame(width: 50, height: 50, alignment: .center)
                        }
                
                }
                
        //                   )

            }
    }


struct SettingCardView_Previews: PreviewProvider {
    static var previews: some View {
        SettingCardView()
    }
}
