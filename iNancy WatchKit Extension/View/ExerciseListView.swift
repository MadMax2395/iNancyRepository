//
//  ExerciseListView.swift
//  iNancy WatchKit Extension
//
//  Created by Massimo Maddaluno on 17/01/2020.
//  Copyright © 2020 Massimo Maddaluno. All rights reserved.
//


import SwiftUI
import Combine

struct ExerciseListView: View {
    var functionSection: String
    var body: some View {
        
        List(ExerciseManager.shared.getList2(function: functionSection)){exercise in
            
            
            NavigationLink(destination: ExerciseChosenView(exercise: exercise)){
                
                
                CardViewExercise(exercise: exercise)
                
                
                
            }.scaledToFit()
            
        }
        .navigationBarTitle(Text("iNancy")).navigationBarHidden(false)
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
