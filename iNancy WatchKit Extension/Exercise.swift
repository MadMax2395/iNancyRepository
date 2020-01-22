//
//  Exercise.swift
//  iNancy WatchKit Extension
//
//  Created by Simone Punzo on 16/01/2020.
//  Copyright © 2020 Simone Punzo. All rights reserved.
//

import Foundation
import SwiftUI

//public enum Functionality : String,CaseIterable,Codable,Hashable {
//    case back = "Back"
//    case mind = "Mind"
//    case blood = "Blood"
//}


public struct Exercise : Codable,Identifiable,Hashable {
    
    public var id:Int
    public var name:String
    public var imageName:String
    public var description:String
    public var function: String//Functionality
    public var duration : Int
    public var suggestedWeeks: [Int] = []
}

var exerciseList : [Exercise] = load("data.json")


func load(_ filename:String) -> [Exercise]
{
    
    let data:Data
    
    guard let file=Bundle.main.url(forResource: filename,withExtension: nil)
     
    else
    {
        fatalError("Could not find \(filename) in main bundle")
    }
        
    do {
        data=try Data(contentsOf: file)
    }
    catch {
        fatalError("Could not find \(filename) from main Bundle\n\(error)")
    }
    
    do {
        let decoder=JSONDecoder()
        return try decoder.decode([Exercise].self, from: data)
    } catch {
        fatalError("Could not parse \(filename) as \([Exercise].self):\n\(error)")
    }
}
