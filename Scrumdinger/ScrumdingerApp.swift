//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by Ahmed Hajıyev on 17.02.22.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    @State private var scrums = DailyScrum.sampleData
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ScrumsView(scrums: $scrums)
            }
            
        }
    }
}
