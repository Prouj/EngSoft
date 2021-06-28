//
//  Contact+CoreDataProperties.swift
//  Agenda
//
//  Created by Paulo Uchôa on 28/06/21.
//
//

import Foundation
import CoreData


extension Contact {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Contact> {
        return NSFetchRequest<Contact>(entityName: "Contact")
    }

    @NSManaged public var cep: String?
    @NSManaged public var iD: UUID?
    @NSManaged public var email: String?
    @NSManaged public var name: String?
    @NSManaged public var numberOne: String?
    @NSManaged public var numberTwo: String?
    @NSManaged public var contactToGroup: NSSet?

}

// MARK: Generated accessors for contactToGroup
extension Contact {

    @objc(addContactToGroupObject:)
    @NSManaged public func addToContactToGroup(_ value: Group)

    @objc(removeContactToGroupObject:)
    @NSManaged public func removeFromContactToGroup(_ value: Group)

    @objc(addContactToGroup:)
    @NSManaged public func addToContactToGroup(_ values: NSSet)

    @objc(removeContactToGroup:)
    @NSManaged public func removeFromContactToGroup(_ values: NSSet)

}

extension Contact : Identifiable {

}
