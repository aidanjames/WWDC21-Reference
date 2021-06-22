//
//  BlurEffectView.swift
//  WWDC21 Reference
//
//  Created by Aidan Pendlebury on 09/06/2021.
//

import SwiftUI

struct BlurEffectView: View {
    var body: some View {
        ZStack {
            Image("singapore")
                .resizable()
                .scaledToFit()

            Text("Visit Singapore")
                .padding()
                .background(.ultraThinMaterial)
                .cornerRadius(16)
        }
    }
}

struct BlurEffectView_Previews: PreviewProvider {
    static var previews: some View {
        BlurEffectView()
    }
}
