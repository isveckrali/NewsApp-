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
            // launch screen can be managed manually, but you should remove the related file about the Launch screen from the "info" file
            //LaunchScreen()
            ContentView().environmentObject(ReadCategory())
               // .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
