//
//  GroupViewModel.swift
//  Agenda
//
//  Created by Paulo Uchôa on 28/06/21.
//

import Foundation
import CoreData

class GroupViewModel: ObservableObject {
    
    let viewContext = PersistenceController.shared.container.viewContext
    private var group: Group?
    
    var contacts: [Contact] = []
    
    func create(name: String, contacts: [Contact]) -> Group {
        
        let newGroup = Group(context: viewContext)
        newGroup.iD = UUID()
        newGroup.name = name
        newGroup.addToGroupToContact(NSSet(array: contacts))
        do {
            try viewContext.save()
        } catch let error as NSError {
            print("could not save \(error) \(error.userInfo)")
        }
        return newGroup
    }
    
    func delete(group: Group) {
        viewContext.delete(group)
        do {
            try viewContext.save()
        } catch let error as NSError {
            print("Could not delete. \(error), \(error.userInfo)")
        }
    }
    
    func deleteContactInGroup(contact: Contact, group: Group) {
        
        group.removeFromGroupToContact(contact)
        
        do {
            try viewContext.save()
        } catch let error as NSError {
            print("Could not delete. \(error), \(error.userInfo)")
        }
    }
    
    func update(group: Group, name: String, contacts: [Contact]) {
        group.iD = group.iD
        group.name = name
        group.addToGroupToContact(NSSet(array: contacts))
        
        do {
            try viewContext.save()
        } catch let error as NSError {
            print("Could not update. \(error), \(error.userInfo)")
        }
    }
    
}
