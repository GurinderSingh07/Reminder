//
//  CoreDataProvider.swift
//  Reminder
//
//  Created by Gurinder Singh on 2023-03-28.
//

import Foundation
import CoreData

class CoreDataProvider{
    
    //Create a singleton to make sure a persistent container is created only once in a memory as we need it in every file.
    static let shared = CoreDataProvider()
    
    //Initialise a core data stack in order to interact with core data.
    let persistentContainer: NSPersistentContainer
    
    private init(){
        
        //Create a container with specific name to create and manage all the entity models related to the container.
        persistentContainer = NSPersistentContainer(name: "ReminderModel")
        
        //To instruct the container to load the persistent stores and complete the creation of core data stack.
        persistentContainer.loadPersistentStores { description, error in
            
            if let error{
                
                fatalError("Error initialising Reminder Model \(error)")
            }
        }
    }
}
