//
//  Destiny_sChild_AlbumsApp.swift
//  Destiny'sChild_Albums
//
//  Created by Tatiana6mo on 2/20/26.
//

import SwiftUI
import SwiftData

@main
struct Destiny_sChild_AlbumsApp: App {
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
