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
        ZStack{
            RoundedRectangle(cornerRadius: 25, style: .circular)
             .foregroundColor(Color.init(red:142/255,green : 128/255,blue:221/255))
                .frame(width:180,height:140,alignment: .center)
            HStack{
                Text(section.category)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .lineLimit(5)
                    .frame(width: 72.0, height: 106.0)
                    
                    
                    
                    
                Image(section.imagename)
                .resizable()
                    .frame(width:80,height:70,alignment:.center)
                
                    
            }
        }
    }
}

struct MenuCardView_Previews: PreviewProvider {
    static var previews: some View {
        MenuCardView(section:SectionData[0])
    }
}
