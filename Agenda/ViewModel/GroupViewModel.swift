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
//        newGroup.groupToContact = contacts
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
    
    func update(for group: Group, newGroup: Group) {
        group.name = newGroup.name
        
        do {
            try viewContext.save()
        } catch let error as NSError {
            print("Could not update. \(error), \(error.userInfo)")
        }
    }
    
    func addProductToDelivery(contact: Contact) {
        let contactInGroup = Group(context: viewContext)
//        contactInGroup.name = contact.name
        contact.addToContactToGroup(NSSet(array: [contactInGroup]))
//        product.addToProductToProductSold(productSold)
        contacts.append(contact)
//        deliveryView.productsTableView.reloadData()
//        totalPrice += Decimal(quantity) * (contact.sellPrice as Decimal? ?? 0)
//        deliveryView.totalPriceLabel.text = String(describing: "Preço total: \(totalPrice) reais")
    }
}
