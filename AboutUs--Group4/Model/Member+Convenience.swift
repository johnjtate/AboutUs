//
//  Member+Convenience.swift
//  AboutUs--Group4
//
//  Created by John Tate on 10/1/18.
//  Copyright © 2018 John Tate. All rights reserved.
//

import Foundation
import CoreData

extension Member {
    
    @discardableResult
    convenience init(name: String, age: String, imageName: String, funFacts: [FunFact] = [], context: NSManagedObjectContext = CoreDataStack.context) {
        
        self.init(context: context)
        self.name = name
        self.age = age
        self.imageName = imageName
    }
}
