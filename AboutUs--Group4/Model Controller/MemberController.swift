//
//  MemberController.swift
//  AboutUs--Group4
//
//  Created by John Tate on 10/1/18.
//  Copyright © 2018 John Tate. All rights reserved.
//

import Foundation
import CoreData

class MemberController {
    
    static let shared = MemberController()
    
    func add(memberWithName name: String, age: String, imageName: String) {
        Member(name: name, age: age, imageName: imageName)
        saveToPersistentStore()
    }
    
    func delete(member: Member) {
        CoreDataStack.context.delete(member)
        saveToPersistentStore()
    }
    
    // MARK: - Persistence
    
    func saveToPersistentStore() {
        do{
            try CoreDataStack.context.save()
        } catch {
            print("There was as error in \(#function) :  \(error) \(error.localizedDescription)")
        }
    }
}
