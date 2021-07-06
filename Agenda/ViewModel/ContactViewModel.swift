//
//  ContactViewModel.swift
//  Agenda
//
//  Created by Paulo Uchôa on 28/06/21.
//

import Foundation
import SwiftUI
import CoreData
import Combine

class ContactViewModel: ObservableObject {
    let viewContext = PersistenceController.shared.container.viewContext
    private var contact: Contact?
    
    let onSave = PassthroughSubject<Void, Never>()
    let onCancel = PassthroughSubject<Void, Never>()
    
    func create(name: String, email: String, cep: String, numberOne: String, numberTwo: String) {
        
        let newContact = Contact(context: viewContext)
        newContact.iD = UUID()
        newContact.name = name
        newContact.email = email
        newContact.cep = cep
        newContact.numberOne = numberOne
        newContact.numberTwo = numberTwo
        
        do {
            try viewContext.save()
        } catch let error as NSError {
            print("could not save \(error) \(error.userInfo)")
        }
        
//        return newContact/
    }
    
    func delete(contact: Contact) {
        viewContext.delete(contact)
        do {
            try viewContext.save()
        } catch let error as NSError {
            print("Could not delete. \(error), \(error.userInfo)")
        }
    }
    
    func fetch() -> [Contact] {
        let fetchRequest = NSFetchRequest<Contact>(entityName: "Contact")
//        let fetch = Plant.fetchRequest() as NSFetchRequest <Plant>
        var contacts: [Contact] = []

        do {
            contacts = try viewContext.fetch(fetchRequest)
        } catch let error as NSError {
            print("Could not fetch. \(error), \(error.userInfo)")
        }
        return contacts
    }
    
    func update(contact: Contact, name: String, email: String, cep: String, numberOne: String, numberTwo: String ) {

        contact.iD = contact.iD
        contact.name = name
        contact.email = email
        contact.cep = cep
        contact.numberOne = numberOne
        contact.numberTwo = numberTwo
        do {
            try viewContext.save()
        } catch let error as NSError {
            print("Could not update. \(error), \(error.userInfo)")
        }
    }
    
    
}

