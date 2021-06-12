//
//  TaskModifierView.swift
//  WWDC21 Reference
//
//  Created by Aidan Pendlebury on 12/06/2021.
//

import SwiftUI

//Example from Paul Hudson's youtube livestream @21:25 - https://www.youtube.com/watch?v=7sDFCAh_yT8&t=1237s

struct SourceViewer: View {
    let site: String
    @State private var sourceCode = "Loading..."
    
    var body: some View {
        ScrollView {
            Text(sourceCode)
                .font(.system(.body, design: .monospaced))
        }
        .task {
            guard let url = URL(string: "https://\(site)") else { return }
            
            do {
                let (data, _) = try await URLSession.shared.data(from: url)
                sourceCode = String(decoding: data, as: UTF8.self).trimmingCharacters(in: .whitespacesAndNewlines)
            } catch {
                sourceCode = "Failed to fetch site."
            }
        }
    }
}

struct TaskModifierView: View {
    let sites = ["Apple.com", "HackingWithSwift.com"]
    
    var body: some View {
        NavigationView {
            List(sites, id: \.self) { site in
                NavigationLink(site, destination: SourceViewer(site: site))
            }
            .navigationTitle("View source")
        }
    }
}

struct TaskModifierView_Previews: PreviewProvider {
    static var previews: some View {
        TaskModifierView()
    }
}
