//
//  ExerciseManager.swift
//  iNancy WatchKit Extension
//
//  Created by Massimo Maddaluno on 17/01/2020.
//  Copyright © 2020 Massimo Maddaluno. All rights reserved.
//
//
//import Foundation
//import Combine
//import SwiftUI
//
//
//
//public class ExerciseManager: BindableObject{
//
//    public var exerciseList : [Exercise] = exerciseList2
//    static let shared = ExerciseManager()
//
//
//    public func load(_ filename:String) -> [Exercise]
//    {
//
//        let data:Data
//
//        guard let file=Bundle.main.url(forResource: filename,withExtension: nil)
//
//        else
//        {
//            fatalError("Could not find \(filename) in main bundle")
//        }
//
//        do {
//            data=try Data(contentsOf: file)
//        }
//        catch {
//            fatalError("Could not find \(filename) from main Bundle\n\(error)")
//        }
//
//        do {
//            let decoder=JSONDecoder()
//            return try decoder.decode([Exercise].self, from: data)
//        } catch {
//            fatalError("Could not parse \(filename) as \([Exercise].self):\n\(error)")
//        }
//    }
//
//
//
//
//
//    public func getId(index: Int) -> Int{
//        return self.exerciseList[index].id
//    }
//
//    public func setId(index: Int, newId: Int){
//        self.exerciseList[index].id = newId
//    }
//
//    public func getName(index: Int) -> String{
//        return self.exerciseList[index].name
//    }
//
//    public func setName(index: Int, newName: String){
//        self.exerciseList[index].name = newName
//    }
//
//    public func getImageName(index: Int) -> String{
//        return self.exerciseList[index].imagename
//    }
//
//    public func setImageName(index: Int, newImageName: String){
//        self.exerciseList[index].imagename = newImageName
//    }
//
//    public func getDescription(index: Int) -> String{
//        return self.exerciseList[index].description
//    }
//
//    public func setDescription(index: Int, newDescription: String){
//        self.exerciseList[index].description = newDescription
//    }
//
//    public func getFunction(index: Int) -> String{
//        return self.exerciseList[index].function
//    }
//
//    public func setFunction(index: Int, newFunction: String){
//        self.exerciseList[index].function = newFunction
//    }
//
//    public func getDuration(index: Int) -> Int{
//        return self.exerciseList[index].duration
//    }
//
//    public func setDuration(index: Int, newDuration : Int){
//        self.exerciseList[index].duration = newDuration
//    }
//
//    public func getSuggestedWeeks(index: Int) -> [Int]{
//           return self.exerciseList[index].suggestedWeeks
//    }
//
//    public func setSuggestedWeeks(index: Int, newSuggestedWeeks : [Int]){
//           self.exerciseList[index].suggestedWeeks[0] = newSuggestedWeeks[0]
//           self.exerciseList[index].suggestedWeeks[1] = newSuggestedWeeks[1]
//    }
//
//    public func getList() -> [Exercise]{
////        let tempList = self.exerciseList
//        return self.exerciseList
//    }
//
//
//}
