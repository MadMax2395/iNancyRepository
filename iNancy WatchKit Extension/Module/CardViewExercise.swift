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

        VStack{
            Rectangle()
                .cornerRadius(20)
                .foregroundColor(Color.clear)
                .overlay(
                    VStack{
                        
                        HStack{
                            
                            Text("\(exercise.name)")
                                .font(.caption)
                                .padding(.top, 15)
                            //                                        .padding(.leading, 2)
                            
                            Spacer()
                        }
                        
                        Spacer()
                        
                        
                        Image(exercise.imageName)
                            .resizable()
                            
                            .frame(width: 80, height: 85, alignment: .center)
                        
                        
                        
                        Spacer()
                        
                        HStack{
                            
                            Spacer()
                            Text("\(exercise.duration / 60) min")
                                
                                
                                .padding(.bottom, 10)
                                .padding(.trailing, -2)
                            
                            
                            
                            
                        }
                        
                        
                        Spacer()
                        
                        
                    }
            )
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
        
    }
}
#endif
