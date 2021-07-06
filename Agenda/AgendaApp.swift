//
//  AgendaApp.swift
//  Agenda
//
//  Created by Paulo Uchôa on 28/06/21.
//

import SwiftUI

@main
struct AgendaApp: App {
    
    
    
    var body: some Scene {
        let persistenceContainer = PersistenceController.shared
        WindowGroup {
            ContactListView()
                .environment(\.managedObjectContext, persistenceContainer.container.viewContext)
        }
    }
}
