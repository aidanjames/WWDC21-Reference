//
//  SwipeActionsView.swift
//  WWDC21 Reference
//
//  Created by Aidan Pendlebury on 09/06/2021.
//

import SwiftUI

struct SwipeActionsView: View {
    
    @State private var tmsTeam = ["Aidan", "Ian", "Terry", "Wayne", "Jon", "Roo", "Cliff"]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(tmsTeam, id: \.self) { member in
                    Text(member)
                        .swipeActions(allowsFullSwipe: false) {
                            Button(action: { print("This!") } ) {
                                Text("Print")
                            }
                            Button(role: .destructive, action: { print("That!") } ) {
                                Image(systemName: "trash")
                            }
                        }
                }
                .navigationTitle("Members")
            }
        }
    }
}

struct SwipeActionsView_Previews: PreviewProvider {
    static var previews: some View {
        SwipeActionsView()
    }
}
