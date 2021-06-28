//
//  AgendaApp.swift
//  Agenda
//
//  Created by Paulo Uchôa on 28/06/21.
//

import SwiftUI

@main
struct AgendaApp: App {
    
    let persistenceContainer = PersistenceController.shared
    
    var body: some Scene {
        WindowGroup {
            ContactListView()
                .environment(\.managedObjectContext, persistenceContainer.container.viewContext)
        }
    }
}
