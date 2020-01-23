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
        
        List {
            ForEach(SectionManager.shared.getSectionList()) {
                
               section in
            
           NavigationLink(destination:ExerciseListView(functionSection: section.function)){
                
                MenuCardView(section: section)

                
                }
                }
            .listRowBackground(RoundedRectangle(cornerRadius: 20).fill(Color.init(red: 233/255.0, green: 0/255.0, blue: 132/255.0)))
            
            NavigationLink(destination: SettingView()) {
                SettingCardView()
            }
            .listRowBackground(RoundedRectangle(cornerRadius: 20).fill(Color.init(red: 128/255.0, green: 128/255.0, blue: 128/255.0)))
        }
//        .listStyle(CarouselListStyle())
            .navigationBarTitle(Text("iNancy")).navigationBarHidden(false)
 
    }
}



struct SectionList_Previews: PreviewProvider {
    static var previews: some View {
        SectionList()
    }
}
