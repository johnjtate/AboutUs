//
//  CoreDataStack.swift
//  AboutUs--Group4
//
//  Created by John Tate on 10/1/18.
//  Copyright © 2018 John Tate. All rights reserved.
//

import Foundation
import CoreData

enum CoreDataStack{
    
    static let container: NSPersistentContainer = {
        
        let container = NSPersistentContainer(name: "PlaylistCodable")
        container.loadPersistentStores(completionHandler: { (_, error) in
            if let error = error{
                fatalError("Failed to Load Persistent Store \(error)")
            }
        })
        return container
    }()
    
    static var context: NSManagedObjectContext{
        return container.viewContext
    }
}

