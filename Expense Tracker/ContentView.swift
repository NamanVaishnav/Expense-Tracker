//
//  ContentView.swift
//  Expense Tracker
//
//  Created by Naman Vaishnav on 29/12/23.
//

import SwiftUI

struct ContentView: View {
    ///Visibility Status
    @AppStorage("isFirstTime") private var isFirstTime: Bool = false
    /// Active Tab
    @State private var activeTab: Tab = .recent
    
    var body: some View {
        TabView(selection: $activeTab) {
            Recents()
                .tabItem { Tab.recent.tabContent }
                .tag(Tab.recent)
            Search()
                .tabItem { Tab.search.tabContent }
                .tag(Tab.search)
            Graphs()
                .tabItem { Tab.charts.tabContent }
                .tag(Tab.charts)
            Settings()
                .tabItem { Tab.settings.tabContent }
                .tag(Tab.settings)
            
        }
        .tint(appTint)
        .sheet(isPresented: $isFirstTime, content: {
            IntroScreen().interactiveDismissDisabled()
        })
    }
}

#Preview {
    ContentView()
}
