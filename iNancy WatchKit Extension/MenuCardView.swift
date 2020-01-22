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
//                            .frame(width: 170, height: 150, alignment: .center)
            
//                    .cornerRadius(20)
//                    .foregroundColor(Color.init(red: 142/255.0, green: 128/255.0, blue: 221/255.0))
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
            
            
        
//        .mask(Rectangle().cornerRadius(20))
        
        
    }
    
    
    
}












//    var body: some View {
//        ZStack{
//            RoundedRectangle(cornerRadius: 25, style: .continuous)
//             .foregroundColor(Color.init(red:142/255,green : 128/255,blue:221/255))
////                .frame(width:180,height:140,alignment: .center)
//            HStack{
//                Text(section.category)
////                    .font(.headline)
//                    .font(.footnote)
//                    .multilineTextAlignment(.leading)
//                    .lineLimit(5)
//                    .padding(.leading, 10)
////                    .frame(width: 72.0, height: 106.0)
//
//
//
//
//                Image(section.imagename)
//                .resizable()
//                    .frame(width:80,height:70,alignment:.center)
//
//
//            }
//        }
//    }



struct MenuCardView_Previews: PreviewProvider {
    static var previews: some View {
       
            MenuCardView(section:SectionData[0])
        
        
        
    }
}
