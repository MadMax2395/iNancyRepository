//
//  Section.swift
//  iNancy WatchKit Extension
//
//  Created by Simone Punzo on 17/01/2020.
//  Copyright © 2020 Massimo Maddaluno. All rights reserved.
//

import Foundation
import SwiftUI


public struct Section : Codable,Identifiable,Hashable{
        
   public var id:Int
   public var category:String
   public var imageName:String
   public var function: String
//
//    enum Category: String,CaseIterable,Codable,Hashable{
//        case
//            Back="Sustain your back"
//        case
//            Legs="Train your legs"
//        case
//            Bloodpressure="Improve your blood pressure"
//    }
}

let SectionData:[Section]=loadSection("section.json")

 func loadSection(_ filename:String) -> [Section]
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
         return try decoder.decode([Section].self, from: data)
     } catch {
         fatalError("Could not parse \(filename) as \([Section].self):\n\(error)")
     }
 }


