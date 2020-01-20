//
//  ExerciseListView.swift
//  iNancy WatchKit Extension
//
//  Created by Massimo Maddaluno on 17/01/2020.
//  Copyright © 2020 Massimo Maddaluno. All rights reserved.
//


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

import SwiftUI
import Combine

struct ExerciseListView: View {
    var body: some View {
        
            List(exerciseList){exercise in
                
                
                    NavigationLink(destination: ExerciseChosen(exerciseChosen: exercise)){
                        
                       
                            CardViewExercise(exercise: exercise)
                            
                         
                    
                        }
                    .listStyle(CarouselListStyle())
                    .scaledToFill()
                        .listRowPlatterColor(Color.black)
                
                    
                    
                    
                
            
        }
            
        }

    }

    


struct ExerciseListView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseListView()
    }
}
