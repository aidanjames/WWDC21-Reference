//
//  SearchBarView.swift
//  WWDC21 Reference
//
//  Created by Aidan Pendlebury on 09/06/2021.
//

import SwiftUI

struct SearchBarView: View {
    
    @State private var searchText = ""

    var names: [String] = ["Aidan", "Jon", "Clifford", "Dean", "Dave", "Terry", "Wayne"]
    
    var filteredNames: [String] {
        if searchText.isEmpty {
            return names
        } else {
            return names.filter { $0.lowercased().contains(searchText.lowercased()) }
        }
    }
    
    
    var body: some View {
        NavigationView {
            List(filteredNames, id: \.self) { name in
                Text(name)
            }
            .searchable(text: $searchText)
            .navigationTitle("Names")
        }
    }
}

struct SearchBarView_Previews: PreviewProvider {
    static var previews: some View {
        SearchBarView()
    }
}
