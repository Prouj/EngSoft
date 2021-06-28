//
//  ContactModel.swift
//  Agenda
//
//  Created by Paulo Uchôa on 28/06/21.
//

//import Foundation
//
//class ContactModel: Identifiable {
//    @NSManaged public var name: String
//    @NSManaged public var email: String
//    @NSManaged public var cep: String
//    @NSManaged public var numberOne: String
//    @NSManaged public var numberTwo: String
//    @NSManaged public var contactToGroup: NSSet?
//
//    public var groupArray: [Group] {
//        let set = contactToGroup as? Set<Group> ?? []
//        let groupArray = set.map { group in
//            return group
//        }
//
//        return groupArray
//    }
//
//
//}
//
//extension ContactModel {
//
//    @objc(addSongsObject:)
//    @NSManaged public func addContactInGroup(_ value: Group)
//
//    @objc(removeSongsObject:)
//    @NSManaged public func removeContactInGroup(_ value: Group)
//
//    @objc(addSongs:)
//    @NSManaged public func addContactInGroup(_ values: NSSet)
//
//    @objc(removeSongs:)
//    @NSManaged public func removeContactInGroup(_ values: NSSet)
//
//}

//public var wrappedName: String {
//    name ?? "Desconhecido"
//}
//
//public var grouArray: [Group] {
//    let set = contactToGroup as? Set<Group> ?? []
//
//    return set.sorted {
//        $0.wrappedName < $1.wrappedName
//    }
//}

