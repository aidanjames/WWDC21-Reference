//
//  ButtonControlsView.swift
//  WWDC21 Reference
//
//  Created by Aidan Pendlebury on 15/06/2021.
//

import SwiftUI

struct ButtonControlsView: View {
    var body: some View {
        VStack(spacing: 20) {
            
            Button {
                // Do this
            } label: {
                Text("large, increased prominence")
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.bordered)
            .controlSize(.large)
            .controlProminence(.increased)
            .padding(.horizontal)
            
            Button {
                // Don't do this
            } label: {
                Text("large, standard prominence")
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.bordered)
            .controlSize(.large)
            .controlProminence(.standard)
            .padding(.horizontal)
            
            Button {
                // Don't do this
            } label: {
                Text("regular, standard prominence")
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.bordered)
            .controlSize(.regular)
            .controlProminence(.standard)
            .padding(.horizontal)
            
            Button {
                // Do this
            } label: {
                Text("small, standard prominence")
                    .frame(maxWidth: .infinity)
            }
            .buttonStyle(.bordered)
            .controlSize(.small)
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
