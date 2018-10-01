//
//  FunFact+Convenience.swift
//  AboutUs--Group4
//
//  Created by John Tate on 10/1/18.
//  Copyright © 2018 John Tate. All rights reserved.
//

import Foundation
import CoreData

extension FunFact {
    
    @discardableResult
    convenience init(fact: String, member: Member, context: NSManagedObjectContext = CoreDataStack.context){
        
        self.init(context: context)
        self.fact = fact
        self.member = member
    }
}
