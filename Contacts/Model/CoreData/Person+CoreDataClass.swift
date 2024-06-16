//
//  Person+CoreDataClass.swift
//  Contacts
//


import Foundation
import CoreData


public class Person: NSManagedObject {
    
    convenience init() {
        self.init(entity: CoreDataManager.sharedInstance.entityForName("Person"), insertInto: CoreDataManager.sharedInstance.persistentContainer.viewContext)
    }
}
