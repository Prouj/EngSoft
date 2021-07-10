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
        

    }
    
    func delete(contact: Contact) {
        viewContext.delete(contact)
        do {
            try viewContext.save()
        } catch let error as NSError {
            print("Could not delete. \(error), \(error.userInfo)")
        }
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

