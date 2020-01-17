//
//  ExerciseItem.swift
//  iNancy WatchKit Extension
//
//  Created by Simone Punzo on 16/01/2020.
//  Copyright © 2020 Simone Punzo. All rights reserved.
//

import SwiftUI

struct CardViewExercise: View {
    var exercise: Exercise
    var body: some View {
        //        Image(exercise.imagename)
        ZStack {
            RoundedRectangle(cornerRadius: 20, style: .circular)
                .frame(width: 180, height: 140, alignment: .leading)
                
                .foregroundColor(Color.init(red: 142/255.0, green: 128/255.0, blue: 221/255.0))
            Image(exercise.imagename)
            .resizable()
            .frame(width: 100, height: 80, alignment: .bottom)
            
            
            VStack{
                
             Text("\(exercise.function)")
                .font(.caption)
                .padding(.top, 5)
                .padding(.trailing, 130)
            
                Spacer()
                Text("\(exercise.duration)")
                .font(.subheadline)
                .padding(.bottom, 5)
                .padding(.leading, 130)
                
            }
            
            
            //                .padding(.trailing, 70) // stringe tutta la scritta a sinistra
            
        }
    }
    
}

#if DEBUG
struct ExerciseItem_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            CardViewExercise(exercise: exerciseList[0])
            CardViewExercise(exercise: exerciseList[1])
        }
        .previewLayout(.fixed(width: 200, height: 140))
        
    }
}
#endif
