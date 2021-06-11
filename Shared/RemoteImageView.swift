//
//  RemoteImageView.swift
//  WWDC21 Reference
//
//  Created by Aidan Pendlebury on 09/06/2021.
//

import SwiftUI

struct RemoteImageView: View {
    var body: some View {
        AsyncImage(url: URL(string: "https://avatars.githubusercontent.com/u/44542889?v=4")) { image in
            image.resizable()
        } placeholder: {
            Color.secondary.opacity(0.5)
        }
        .frame(width: 128, height: 128)
        .clipShape(Circle())
    }
}

struct RemoteImageView_Previews: PreviewProvider {
    static var previews: some View {
        RemoteImageView()
    }
}
