//
//  GreetingsView.swift
//  Mediation
//
//  Created by FE-Thong on 23/07/2023.
//

import SwiftUI

struct GreetingsView: View {
    let name: String

    var body: some View {
        HStack {
            VStack(alignment: .leading, content: {
                Text("Goog morning \(name)")
                    .foregroundStyle(colorTextWhite)
                    .font(.title)
                    .fontWeight(.semibold)
                Text("have a great day")
                    .foregroundStyle(colorTextWhite)
                    .font(.subheadline)
                    .fontWeight(.thin)
            })
            Spacer()
            Image(systemName: "magnifyingglass")
                .foregroundStyle(colorTextWhite)
        }
        .padding()
    }
}

#Preview {
    GreetingsView(name: "Adam")
}
