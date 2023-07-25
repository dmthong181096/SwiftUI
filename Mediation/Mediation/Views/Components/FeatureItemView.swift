//
//  FeatureItemView.swift
//  Mediation
//
//  Created by FE-Thong on 25/07/2023.
//

import SwiftUI

struct FeatureItemView: View {
    
    let featureItem : FeatureModel
    var body: some View {
        let width =  UIScreen.main.bounds.width
        let halfWidth =  width / 2
        let boxDim = 0.9 * halfWidth
        var lightColor = featureItem.lightColor
        var mediumColor = featureItem.mediumColor
        var darkColor = featureItem.darkColor
        var title = featureItem.title
        var iconName = featureItem.iconName
        ZStack {
            Rectangle()
                .fill(
                    LinearGradient(colors: [lightColor, mediumColor, darkColor], startPoint: .topLeading, endPoint: .bottomTrailing)
                )
                .frame(width: boxDim, height: boxDim)
                .clipShape(RoundedRectangle(cornerRadius: 10), style: FillStyle())
            VStack( alignment: .leading ,content: {
                Text(title)
                    .fixedSize(horizontal: false, vertical: true)
                    .foregroundStyle(colorTextWhite)
                    .fontWeight(.bold)
                    .padding()
                    .multilineTextAlignment(.center)
                Spacer()
                HStack {
                    Image(systemName: iconName)
                        .imageScale(.large)
                        .foregroundStyle(colorTextWhite)
                    Spacer()
                    Text("Start")
                        .foregroundStyle(colorTextWhite)
                        .font(.body)
                        .padding()
                        .shadow(radius: 12)
                        .background(
                            colorButtonBlue
                        )
                        .clipShape(RoundedRectangle(cornerRadius: 10), style: /*@START_MENU_TOKEN@*/FillStyle()/*@END_MENU_TOKEN@*/)
                        
                }
                .padding()
                
            }).frame(width: boxDim, height: boxDim, alignment: .leading)
        }
    }
}

#Preview {
    FeatureItemView(featureItem: featureList[0])
}
