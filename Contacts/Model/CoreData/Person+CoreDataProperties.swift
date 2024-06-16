//
//  Person+CoreDataProperties.swift
//  Contacts
//


import Foundation
import CoreData


extension Person {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Person> {
        return NSFetchRequest<Person>(entityName: "Person")
    }

    @NSManaged public var firstName: String?
    @NSManaged public var lastName: String?
    @NSManaged public var profileImage: NSData?
    @NSManaged public var isFavorite: Bool
    @NSManaged public var phoneNumbers: NSObject?
    @NSManaged public var emails: NSObject?
    @NSManaged public var addresses: NSObject?
    
  

}
