//
//  Search.swift
//  Expense Tracker
//
//  Created by Naman Vaishnav on 29/12/23.
//

import SwiftUI
import Combine

struct Search: View {
    @State private var searchText: String = ""
    @State private var filterText: String = ""
    let searchPublisher = PassthroughSubject<String, Never>()
    
    var body: some View {
        NavigationStack {
            ScrollView(.vertical) {
                LazyVStack(spacing: 12) {
                    
                }
            }
            .overlay {
                ContentUnavailableView("Search Transactions", systemImage: "magnifyingglass")
            }
            .onChange(of: searchText) { oldValue, newValue in
                if newValue.isEmpty {
                    filterText = ""
                }
                searchPublisher.send(newValue)
            }
            .onReceive(searchPublisher.debounce(for: .seconds(0.3), scheduler: DispatchQueue.main), perform: { text in
                filterText = text
            })
            .searchable(text: $searchText)
            .navigationTitle("Search")
            .background(.gray.opacity(0.15))
            
        }
    }
}

#Preview {
    Search()
}
