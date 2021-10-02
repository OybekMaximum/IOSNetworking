//
//  IOSNetworkingApp.swift
//  IOSNetworking
//
//  Created by Oybek To’laboyev on 29/09/21.
//

import SwiftUI

@main
struct IOSNetworkingApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            Screen1()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
