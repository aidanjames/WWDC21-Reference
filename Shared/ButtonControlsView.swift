//
//  ButtonControlsView.swift
//  WWDC21 Reference
//
//  Created by Aidan Pendlebury on 15/06/2021.
//

import SwiftUI

struct ButtonControlsView: View {
    var body: some View {
        Button("Normal button") {
            // This
        }
        .buttonStyle(.bordered)
    }
}

struct ButtonControlsView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonControlsView()
    }
}
