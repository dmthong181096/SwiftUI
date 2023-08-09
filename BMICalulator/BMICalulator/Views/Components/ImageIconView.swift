//
//  ImageIconView.swift
//  BMICalulator
//
//  Created by FE-Thong on 08/08/2023.
//

import SwiftUI

struct ImageIconView: View {
    let imageName: String
    let size: CGFloat
    var body: some View {
        Image(systemName: imageName)
//            .resizable()
            .frame(width: size, height: size, alignment: .center)
            .padding(10)
            .background(
                RoundedRectangle(cornerRadius: size*2)
                    .fill(.colorWhite)
                    .shadow(color: colorGray.opacity(0.4), radius: 0.5, x: 0, y: 0)
                    .shadow(color: colorGray.opacity(0.3), radius: 0.5, x: 2, y: 2)
            )
    }
}

#Preview {
    ZStack {
        ZStack {
            colorWhite
            ImageIconView(imageName: "person", size: 20)
        }
    }
}
