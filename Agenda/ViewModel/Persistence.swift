//
//  Persistence.swift
//  Agenda
//
//  Created by Paulo Uchôa on 28/06/21.
//

import CoreData

struct PersistenceController {
    static let shared = PersistenceController()


    let container: NSPersistentCloudKitContainer

    init() {
        container = NSPersistentCloudKitContainer(name: "AgendaContatos")

        container.loadPersistentStores(completionHandler: { (_, error) in
            if let error = error as NSError? {
           
                fatalError("Unresolved error \(error), \(error.userInfo)")
            }
        })
        
//        container.viewContext.automaticallyMergesChangesFromParent = true
//        container.viewContext.mergePolicy = NSMergeByPropertyObjectTrumpMergePolicy
    }
}


