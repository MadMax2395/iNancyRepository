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
//                .frame(width: 170, height: 150, alignment: .center)
                    .cornerRadius(20)
            //        .foregroundColor(Color.init(red: 142/255.0, green: 128/255.0, blue: 221/255.0))
                        .foregroundColor(Color.clear)

                        
                        .overlay(
                            VStack{
                                
                                HStack{
                                    
                                    Text("\(exercise.function)")
                                        .font(.caption)
                                        .padding(.top, 10)
                                        .padding(.leading, 10)
                                    
                                    Spacer()
                                }
                                
                                Spacer()
                                
                                
                                    Image(exercise.imageName)
                                        .resizable()
                                
                                        .frame(width: 100, height: 100, alignment: .bottom)
                                
                                
                                
                                Spacer()
                                
                                HStack{
                                    
                                    Spacer()
                                    Text("\(exercise.duration)")
                                        .font(.caption)
                                        .padding(.trailing, 10)
                                }
                                
                                
                                Spacer()
                                
                            }
                    )
            
//            Button(action: {
//                // your action here
//            }) {
//                Text("Button title")
//            }.frame(width: 100, height: 100)
//                .aspectRatio(.init(width: 50, height: 50), contentMode: .fit)
            
            
        }
//         Rectangle()
//        .cornerRadius(20)
////        .foregroundColor(Color.init(red: 142/255.0, green: 128/255.0, blue: 221/255.0))
//            .foregroundColor(Color.clear)
//
//
//            .overlay(
//                VStack{
//
//                    HStack{
//
//                        Text("\(exercise.function)")
//                            .font(.caption)
//                            .padding(.top, 10)
//                            .padding(.leading, 10)
//
//                        Spacer()
//                    }
//
//                    Spacer()
//
//
//                        Image(exercise.imagename)
//                            .resizable()
//                            .frame(width: 100, height: 80, alignment: .bottom)
//
//
//
//                    Spacer()
//
//                    HStack{
//
//                        Spacer()
//                        Text("\(exercise.duration)")
//                            .font(.caption)
//                            .padding(.trailing, 10)
//                    }
//
//
//                    Spacer()
//
//                }
//
//        )
//
//
                
                
            
            
            
            
            //                .padding(.trailing, 70) // stringe tutta la scritta a sinistra

//        .edgesIgnoringSafeArea(.bottom)
//        .background(Color.clear)
    }
    
}

#if DEBUG
struct ExerciseItem_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            CardViewExercise(exercise: exerciseList[0])
            CardViewExercise(exercise: exerciseList[1])
        }
//        .previewLayout(.fixed(width: 200, height: 140))
        
    }
}
#endif
