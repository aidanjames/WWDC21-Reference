//
//  SwipeActionsView.swift
//  WWDC21 Reference
//
//  Created by Aidan Pendlebury on 09/06/2021.
//

import SwiftUI

struct SwipeActionsView: View {
    
    @State private var members: [Member] = []
    
    var body: some View {
        NavigationView {
            List {
                ForEach(members) { member in
                    Text(member.name)
                        .swipeActions(allowsFullSwipe: false) {
                            Button(action: { print("This!") } ) {
                                Text("Print")
                            }
                            Button(role: .destructive, action: {
                                if let index = members.firstIndex(where: { $0.id == member.id } ) {
                                    members.remove(at: index)
                                }
                            } ) {
                                Image(systemName: "trash")
                            }
                        }
                }
                .navigationTitle("Members")
            }
            .task { members = Member.createMembers() }
        }
    }
}


struct Member: Identifiable {
    var id: UUID = UUID()
    var name: String
    
    static func createMembers() -> [Member] {
        let team = ["Aidan", "Ian", "Terry", "Wayne", "Jon", "Roo", "Cliff"]
        var returnTeam: [Member] = []
        for person in team {
            let newMember = Member(name: person)
            returnTeam.append(newMember)
        }
        return returnTeam
    }
}


struct SwipeActionsView_Previews: PreviewProvider {
    static var previews: some View {
        SwipeActionsView()
    }
}
