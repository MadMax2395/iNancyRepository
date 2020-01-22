//
//  RowView.swift
//  iNancy WatchKit Extension
//
//  Created by Massimo Maddaluno on 21/01/2020.
//  Copyright © 2020 Massimo Maddaluno. All rights reserved.
//

import SwiftUI

struct RowView: View {
   
    var body: some View {
        ZStack{
            Color.black
            MenuCardView(section: SectionData[0])
        }.padding(.horizontal, -8)
    }
}

struct RowView_Previews: PreviewProvider {
    static var previews: some View {
        RowView()
    }
}
