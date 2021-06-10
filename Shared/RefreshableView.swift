//
//  RefreshableView.swift
//  Shared
//
//  Created by Aidan Pendlebury on 09/06/2021.
//

import SwiftUI

struct RefreshableView: View {
    
    @State private var data: [String] = ["Pull to fetch data..."]
    
    var body: some View {
        NavigationView {
            VStack {
                List(data, id: \.self) { item in
                    Text(item)
                }
            }
            .navigationTitle("Refreshable")
            .refreshable { updateData() }
        }
        
    }
    
    func updateData() {
        let randomLetters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j"]
        for _ in 1...10 {
            data.append(randomLetters.randomElement()!)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RefreshableView()
    }
}
