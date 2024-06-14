//
//  StudyUpApp.swift
//  StudyUp
//
//  Created by Scholar on 6/11/24.
//

import SwiftUI
import SwiftData

@main
struct StudyUpApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: ToDoItem.self)
        }
    }
}
