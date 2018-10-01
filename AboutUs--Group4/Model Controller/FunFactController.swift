//
//  FunFactController.swift
//  AboutUs--Group4
//
//  Created by John Tate on 10/1/18.
//  Copyright © 2018 John Tate. All rights reserved.
//

import Foundation
import CoreData

class FunFactController {

    static func create(funFactwithName member: Member, fact: String) {
        FunFact(fact: fact, member: member)
        MemberController.shared.saveToPersistentStore()
    }

    static func delete(funFact: FunFact){
        CoreDataStack.context.delete(funFact)
        MemberController.shared.saveToPersistentStore()
    }
}
