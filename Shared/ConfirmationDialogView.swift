//
//  ConfirmationDialogView.swift
//  WWDC21 Reference
//
//  Created by Aidan Pendlebury on 16/06/2021.
//

import SwiftUI

struct ConfirmationDialogView: View {
    @State private var confirmationViewPresented = false
    
    var body: some View {
        Button {
            confirmationViewPresented.toggle()
        } label: {
            Text("This is the button")
        }
        .confirmationDialog("Do you want to do this?", isPresented: $confirmationViewPresented, titleVisibility: .visible) {
            Button("Let's do it", role: .destructive) {
                print("Do something here")
            }
        }
    }
}

struct ConfirmationDialogView_Previews: PreviewProvider {
    static var previews: some View {
        ConfirmationDialogView()
    }
}
