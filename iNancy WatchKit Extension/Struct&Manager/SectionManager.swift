//
//  SectionManager.swift
//  iNancy WatchKit Extension
//
//  Created by Simone Punzo on 22/01/2020.
//  Copyright © 2020 Massimo Maddaluno. All rights reserved.
//

import Foundation
import SwiftUI
import Combine

public class SectionManager {
    
    private var sectionList : [Section]=[]
    static let shared = SectionManager()
    
    private func loadSection(_ filename:String) -> [Section]
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
    
    private init(){
        self.sectionList=loadSection("section.json")
    }
    
   public func getSectionList()->[Section]
   {
    return self.sectionList
    }
}


