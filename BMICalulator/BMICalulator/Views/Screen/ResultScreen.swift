//
//  ResultScreen.swift
//  BMICalulator
//
//  Created by FE-Thong on 08/08/2023.
//

import SwiftUI

struct ResultScreen: View {
    let result: ResultModel
    var body: some View {
        ZStack {
            colorWhite.ignoresSafeArea()
            VStack {
                //MARK: - HEADER
                HStack(content: {
                    ImageIconView(imageName: imgChevron, size: 20)
                    Spacer()
                    Text("Your BMI")
                        .font(.title)
                        .foregroundStyle(colorGray)
                    Spacer()
                    ImageIconView(imageName: imgPerson, size: 20)
                  
                })
                //MARK: - BODY
                Text(result.bodyState)
                    .font(.title)
                    .foregroundStyle(colorGray)
                //MARK: - FOOTER
            }.frame(width: WIDTH_SCREEN/1.1, alignment: .center)
        }
    }
}

#Preview {
    ResultScreen(result: ResultModel(height: 175, weight: 70))
}
