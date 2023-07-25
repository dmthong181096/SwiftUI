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
        let width =  UIScreen.main.bounds.width
        let halfWidth =  width / 2
        let boxDim = 0.9 * halfWidth
        VStack {
            Text("Feature")
                .foregroundStyle(colorTextWhite)
                .font(.footnote)
                .fontWeight(.semibold)
                .padding()
            
            LazyVGrid(columns: colums, spacing: 20, content: {
                ForEach(0..<colors.count) { i in
                    ZStack {
                        Rectangle()
                            .fill(colors[i])
                            .frame(width: boxDim, height: boxDim)
                            .clipShape(RoundedRectangle(cornerRadius: 10), style: FillStyle())
                        VStack( alignment: .leading ,content: {
                            Text(titles[i])
                                .fixedSize(horizontal: false, vertical: true)
                                .foregroundStyle(colorTextWhite)
//                                .font(.footnote)
                                .fontWeight(.bold)
                                .padding()
                                .multilineTextAlignment(.center)
                            Spacer()
                            Text("Start")
                                .foregroundStyle(colorTextWhite)
                                .font(.body)
                                .padding()
                                .background(
                                    colorButtonBlue
                                )
                                .clipShape(RoundedRectangle(cornerRadius: 10), style: /*@START_MENU_TOKEN@*/FillStyle()/*@END_MENU_TOKEN@*/)
                                .padding()
                            
                        }).frame(width: boxDim, height: boxDim, alignment: .leading)
                    }
                }
            })

        }
    }
}

#Preview {
    FeatureView()
}
