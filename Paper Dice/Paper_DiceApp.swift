//
//  Paper_DiceApp.swift
//  Paper Dice
//
//  Created by Brady Robshaw on 4/5/22.
//

import SwiftUI

@main
struct Paper_DiceApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            HomeView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
