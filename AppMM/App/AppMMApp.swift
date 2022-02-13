//
//  AppMMApp.swift
//  AppMM
//
//  Created by Mehmet Can Seyhan on 2022-02-11.
//

import SwiftUI

@main
struct AppMMApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
               // .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
