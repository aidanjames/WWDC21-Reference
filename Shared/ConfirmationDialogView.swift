//
//  ConfirmationDialogView.swift
//  WWDC21 Reference
//
//  Created by Aidan Pendlebury on 16/06/2021.
//

import SwiftUI

struct ConfirmationDialogView: View {
    @State private var confirmationViewPresented = false
    @State private var mood: String = ""
    
    let moods = ["😊", "☹️", "😐"]
    
    var body: some View {
        VStack {
            Button {
                confirmationViewPresented.toggle()
            } label: {
                Text("Press to see your mood...")
            }
            Text(mood).padding()
                .confirmationDialog("Are you sure you want to do this?", isPresented: $confirmationViewPresented, titleVisibility: .visible) {
                    Button("Let's do it", role: .destructive) { mood = moods.randomElement()! }
                }
        }
    }
}

struct ConfirmationDialogView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmationDialogView()
    }
}
