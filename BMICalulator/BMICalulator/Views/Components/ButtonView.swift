//
//  ButtonView.swift
//  BMICalulator
//
//  Created by FE-Thong on 08/08/2023.
//

import SwiftUI

struct ButtonView: View {
    let text: String
    var body: some View {
        Text(text)
            .foregroundStyle(colorWhite)
            .font(.system(size: 20, weight: .bold, design: .rounded))
            .padding()
            .frame(width: WIDTH_SCREEN/1.1, height: 60, alignment: .center)
            .background(
                RoundedRectangle(cornerRadius: 10).fill(colorOrgane, style: /*@START_MENU_TOKEN@*/FillStyle()/*@END_MENU_TOKEN@*/)
            )
            .shadow(color: colorOrgane.opacity(0.5), radius: 10 , x: 10, y: 10)
    }
}

#Preview {
    ButtonView(text: "CALCULATE")
}
