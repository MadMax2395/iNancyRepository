//
//  ExerciseChosenView.swift
//  iNancy WatchKit Extension
//
//  Created by Simone Punzo on 21/01/2020.
//  Copyright © 2020 Massimo Maddaluno. All rights reserved.
//

import SwiftUI

struct ExerciseChosenView: View {
    var exerciseChosen: Exercise
    var body: some View {
        ExerciseChosen(exerciseChosen: exerciseChosen)
    }
}

struct ExerciseChosenView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseChosen(exerciseChosen: exerciseList[1])
    }
}
