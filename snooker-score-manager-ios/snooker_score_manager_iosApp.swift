//
//  snooker_score_manager_iosApp.swift
//  snooker-score-manager-ios
//
//  Created by BrainX Technologies 11 on 23/03/2024.
//

import SwiftUI
import SwiftData

@main
struct snooker_score_manager_iosApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
