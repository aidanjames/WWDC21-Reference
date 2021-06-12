//
//  DismissActionView.swift
//  WWDC21 Reference
//
//  Created by Aidan Pendlebury on 12/06/2021.
//

import SwiftUI

struct BoringView: View {
    @State private var showSheet = false
    
    var body: some View {
        VStack {
            Text("Show sheet view")
            
            Button("Show") { showSheet = true }
            .buttonStyle(.bordered)
            .sheet(isPresented: $showSheet) {
                DismissActionView()
            }
        }
    }
}

struct DismissActionView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Text("This is a view that will be dismissed.")
            Button("Dismiss") { dismiss() }
            .buttonStyle(.bordered)
        }
    }
}

struct DismissActionView_Previews: PreviewProvider {
    static var previews: some View {
        BoringView()
    }
}
