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
    @Binding var functionSection: String
    var body: some View {
        
        List(ExerciseManager.shared.getList(function: functionSection)){exercise in
                
                
            NavigationLink(destination: ExerciseChosenView(exercise: exercise)){
                        
                       
                            CardViewExercise(exercise: exercise)
                            
                         
                    
                        }
//                    .listStyle(CarouselListStyle())
                    .scaledToFit()
//                        .listRowPlatterColor(Color.black)
                
                    
                    
                    
                
            
                }
                .navigationBarTitle(Text("Menu")).navigationBarHidden(false)
            .scaledToFit()
            .listStyle(CarouselListStyle())
        .listRowPlatterColor(Color.clear)
            
        }

    }

    

//
//struct ExerciseListView_Previews: PreviewProvider {
//    static var previews: some View {
//        ExerciseListView(functionSection: "ciao")
//    }
//}
