//
//  GroupModel.swift
//  Agenda
//
//  Created by Paulo Uchôa on 28/06/21.
//

//import Foundation
//
//class GroupModel: Identifiable {
//
//    @NSManaged public var name: String
//    @NSManaged public var groupToContact: NSSet?
//
//    public var contactArray: [Contact] {
//        let set = groupToContact as? Set<Contact> ?? []
//        let contactArray = set.map { contact in
//            return contact
//        }
//
//        return contactArray
//    }
//}
//
//extension GroupModel {
//
//    @objc(addSongsObject:)
//    @NSManaged public func addContact(_ value: Contact)
//
//    @objc(removeSongsObject:)
//    @NSManaged public func removeContact(_ value: Contact)
//
//    @objc(addSongs:)
//    @NSManaged public func addContact(_ values: NSSet)
//
//    @objc(removeSongs:)
//    @NSManaged public func removeContact(_ values: NSSet)
//
//}
//
//
//public var wrappedName: String {
//    name ?? "desconhecido"
//}
//
//public var contactArray: [Contact] {
//    let set = groupToContact as? Set<Contact> ?? []
//
//    return set.sorted {
//        $0.wrappedName < $1.wrappedName
//    }
//}
