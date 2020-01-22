//
//  MenuView.swift
//  iNancy WatchKit Extension
//
//  Created by Simone Punzo on 17/01/2020.
//  Copyright © 2020 Massimo Maddaluno. All rights reserved.
//

import SwiftUI

struct SectionList: View {
    var body: some View {
        

        
        List(SectionManager.shared.getSectionList()) { section in
            NavigationLink(destination:ExerciseListView(functionSection:Section.category)){
                MenuCardView(section:section)
                
                
                //    .listRowBackground(Color.clear)
                
            }.listRowPlatterColor(Color.pink)
//                        .background(Color.init(red: 233/255.0, green: 0/255.0, blue: 132/255.0))
            //            .listRowPlatterColor(Color.pink)
            //   .scaledToFit()
            //   .listRowPlatterColor(Color.clear)
            //    .listRowBackground(Color.clear)
            //            .listRowInsets(EdgeInsets.init(top: 0, leading: 0, bottom: 0, trailing: 0))
            //            .listRowBackground(RoundedRectangle(cornerRadius: 20).fill(Color.init(red:233/255,green:0/255,blue:128/255)))
            //                .background(Color.green)
            
            //            .listRowPlatterColor(.black)
            //        .frame(width: 200, height: 130, alignment: .center)
            
        }.listStyle(CarouselListStyle())
        .navigationBarTitle(Text("iNancy")).navigationBarHidden(false)
//            .foregroundColor(.orange)
            
            //        .listRowBackground(Capsule().fill(Color.green))
            //        .background(Color.clear)
           
        //   .listRowPlatterColor(Color.clear)
        //   .listRowBackground(Color.clear)
        //   .scaledToFill()
        
        //        .frame(width: 200, height: 130, alignment: .center)
        //   .listStyle(CarouselListStyle())
        
        
        
        
        
        //        VStack{
        //            MenuCardView(section: SectionData[0])
        //            MenuCardView(section: SectionData[1])
        //        }
        
        
    }
}



struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        SectionList()
    }
}
