//
//  ExerciseItem.swift
//  iNancy WatchKit Extension
//
//  Created by Simone Punzo on 16/01/2020.
//  Copyright © 2020 Simone Punzo. All rights reserved.
//

import SwiftUI

struct ExerciseItem: View {
    var exercise:Exercise
    var body: some View {
        Image(exercise.imagename)
    }
}

#if DEBUG
struct ExerciseItem_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseItem(exercise:exerciseData[0])
    }
}
#endif
