//
//  AlertsAndActionSheetsView.swift
//  WWDC21 Reference
//
//  Created by Aidan Pendlebury on 09/06/2021.
//

import SwiftUI

struct AlertsAndActionSheetsView: View {
    @State private var showingAlert = false
    
    var body: some View {
        Button("Show alert") {
            showingAlert = true
        }
        .alert("This is my alert", isPresented: $showingAlert) {
            Button("Cancel", role: .cancel) { }
            Button("Do something", role: .destructive) {
                print("This is doing something")
            }
        }
    }
}

struct AlertsAndActionSheetsView_Previews: PreviewProvider {
    static var previews: some View {
        AlertsAndActionSheetsView()
    }
}
