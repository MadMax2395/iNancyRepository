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
        List(SectionData) { (section) -> MenuCardView in
            MenuCardView(section:section)
        }.frame(width: 200, height: 130, alignment: .center)
        
        
        
        
        
        
    }
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        SectionList()
    }
}
