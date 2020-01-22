//
//  MenuCardView.swift
//  iNancy WatchKit Extension
//
//  Created by Simone Punzo on 17/01/2020.
//  Copyright © 2020 Massimo Maddaluno. All rights reserved.
//

import SwiftUI

struct MenuCardView: View {
    var section : Section
    var body: some View {

//                .foregroundColor(Color.clear)

            
//                    .cornerRadius(20)

//                     .foregroundColor(Color.init(red: 233/255.0, green: 0/255.0, blue: 132/255.0))
            
            
//                   .overlay(
            HStack{
                
                Text(section.category)
                    .font(.caption)
                    .padding(.bottom, 10)
                    .padding(.trailing, 2)
//                    .foregroundColor(Color.init(red: 233/255.0, green: 0/255.0, blue: 132/255.0))
                
                Spacer()
                
                
                Image(section.imageName)
                    .resizable()
                    
                    .frame(width: 50, height: 60, alignment: .center)
                
        
        }
        
//                   )

    }

}


struct MenuCardView_Previews: PreviewProvider {
    static var previews: some View {
       
            MenuCardView(section:SectionData[0])

    }
}
