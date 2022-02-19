//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by Ahmed Hajıyev on 18.02.22.
//

import SwiftUI

struct ScrumsView: View {
    let scrums : [DailyScrum]
    
    var body: some View {
        List {
            ForEach (scrums){ scrum in
                NavigationLink(destination: DetailView(scrum: scrum)) {
                    CardView(scrum: scrum)
                       
                }
                .listRowBackground(scrum.theme.mainColor)
            }
        }
        .navigationTitle("Daily Scrum")
        .toolbar {
            Button(action: {} ) {
                Image(systemName: "plus")
            }
            .accessibilityLabel("New Scrum")
            
        }
    }
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ScrumsView(scrums: DailyScrum.sampleData)
        }

    }
}
