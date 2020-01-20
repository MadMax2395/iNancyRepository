//
//  ExerciseListView.swift
//  iNancy WatchKit Extension
//
//  Created by Massimo Maddaluno on 17/01/2020.
//  Copyright © 2020 Massimo Maddaluno. All rights reserved.
//

import SwiftUI
import Combine

//
//struct LandmarkList: View {
//    var body: some View {
//        NavigationView {
//            List(exerciseList) { exercise in
//                NavigationLink(destination: LandmarkDetail(landmark: landmark)) {
//                    LandmarkRow(landmark: landmark)
//                }
//            }
//            .navigationBarTitle(Text("Landmarks"))
//        }
//    }
//}


struct ExerciseListView: View {
    var body: some View {
        
        List(exerciseList){exercise in
            NavigationLink(destination: ExerciseChosen()){
                CardViewExercise(exercise: exercise)
            }
        
        }.frame(width: 200, height: 130, alignment: .center)
        .listStyle(CarouselListStyle())
        
    }
}
    


struct ExerciseListView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseListView()
    }
}

