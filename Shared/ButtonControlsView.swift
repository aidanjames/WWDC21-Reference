//
//  ButtonControlsView.swift
//  WWDC21 Reference
//
//  Created by Aidan Pendlebury on 15/06/2021.
//

import SwiftUI

struct ButtonControlsView: View {
    var body: some View {
        VStack {
            
            Button {
                // Do this
            } label: {
                Text("Do this")
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.bordered)
            .controlSize(.large)
            .controlProminence(.increased)
            .padding(.horizontal)
            
            Button {
                // Don't do this
            } label: {
                Text("Not this")
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.bordered)
            .controlSize(.large)
            .controlProminence(.standard)
            .padding(.horizontal)
        }
    }
}

struct ButtonControlsView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonControlsView()
    }
}
