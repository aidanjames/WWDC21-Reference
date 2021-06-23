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

            VStack {
                Text("Ultra thin material")z`
                    .padding()
                    .background(.ultraThinMaterial)
                    .cornerRadius(16)
                Text("Thin material")
                    .padding()
                    .background(.thinMaterial)
                    .cornerRadius(16)
                Text("Thick material")
                    .padding()
                    .background(.thickMaterial)
                    .cornerRadius(16)
                Text("Ultra thick material")
                    .padding()
                    .background(.ultraThickMaterial)
                    .cornerRadius(16)
            }
        }
    }
}

struct BlurEffectView_Previews: PreviewProvider {
    static var previews: some View {
        BlurEffectView()
    }
}
