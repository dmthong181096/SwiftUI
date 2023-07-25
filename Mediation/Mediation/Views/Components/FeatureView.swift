//
//  AnotherView.swift
//  Mediation
//
//  Created by FE-Thong on 24/07/2023.
//

import SwiftUI

struct FeatureView: View {
    let colums : [ GridItem] =  Array(repeating: GridItem(.fixed(UIScreen.main.bounds.width/2), spacing: 0), count: 2)
    let colors: [Color] = [
        colorBlueViolet1,
        colorLightGreen1,
        colorOrangeYellow1,
        colorOrangeYellow3
    ]
    let titles : [String] = [
        "Sleep meditation",
        "Tips for sleeping",
        "Night island",
        "Calming sounds"
    ]
    var body: some View {
        VStack {
            Text("Feature")
                .foregroundStyle(colorTextWhite)
                .font(.footnote)
                .fontWeight(.semibold)
                .padding()
            
            LazyVGrid(columns: colums, spacing: 20, content: {
                ForEach(featureList) { feature in
                    FeatureItemView(featureItem: feature)
                }
            })

        }
    }
}

#Preview {
    FeatureView()
}
