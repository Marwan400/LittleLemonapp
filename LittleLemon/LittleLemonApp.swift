//
//  LittleLemonApp.swift
//  LittleLemon
//
//  Created by Marwan Al.Jabri on 11/11/1445 AH.
//

import SwiftUI

@main
struct LittleLemonApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
