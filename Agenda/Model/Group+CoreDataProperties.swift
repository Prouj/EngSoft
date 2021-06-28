//
//  Group+CoreDataProperties.swift
//  Agenda
//
//  Created by Paulo Uchôa on 28/06/21.
//
//

import Foundation
import CoreData


extension Group {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Group> {
        return NSFetchRequest<Group>(entityName: "Group")
    }

    @NSManaged public var iD: UUID?
    @NSManaged public var name: String?
    @NSManaged public var groupToContact: NSSet?

}

// MARK: Generated accessors for groupToContact
extension Group {

    @objc(addGroupToContactObject:)
    @NSManaged public func addToGroupToContact(_ value: Contact)

    @objc(removeGroupToContactObject:)
    @NSManaged public func removeFromGroupToContact(_ value: Contact)

    @objc(addGroupToContact:)
    @NSManaged public func addToGroupToContact(_ values: NSSet)

    @objc(removeGroupToContact:)
    @NSManaged public func removeFromGroupToContact(_ values: NSSet)

}

extension Group : Identifiable {

}
