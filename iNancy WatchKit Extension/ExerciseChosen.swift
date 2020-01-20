//
//  ExerciseChosen.swift
//  iNancy WatchKit Extension
//
//  Created by Massimo Maddaluno on 17/01/2020.
//  Copyright © 2020 Massimo Maddaluno. All rights reserved.
//

import SwiftUI

struct ExerciseChosen: View {
    var exerciseChosen: Exercise
    
    var body: some View {
        
        VStack{
            Rectangle()

        }.edgesIgnoringSafeArea(.bottom)
        
        
        
//        .background(Color.init(red: 142/255.0, green: 128/255.0, blue: 221/255.0))
        
    }
}

struct ExerciseChosen_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseChosen(exerciseChosen: exerciseList[1])
    }
}
