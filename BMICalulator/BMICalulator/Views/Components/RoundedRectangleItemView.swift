//
//  RoundedRectangleItemView.swift
//  BMICalulator
//
//  Created by FE-Thong on 08/08/2023.
//

import SwiftUI

struct RoundedRectangleItemView: View {
    let text : String
    @State var isClick: Bool
    var body: some View {
        Text(text)
            .foregroundStyle(isClick ? colorOrgane : colorGray)
            .frame(width: WIDTH_SCREEN/2.4, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .background(
                RoundedRectangle(cornerRadius: 10).fill(
                    isClick
                   ? colorWhite.shadow(.inner(color: colorGray.opacity(0.2), radius: 4, x: 4, y: 4))
                   : colorWhite.shadow(.drop(color: colorGray.opacity(0.2), radius: 4, x: 4, y: 4)),style: /*@START_MENU_TOKEN@*/FillStyle()/*@END_MENU_TOKEN@*/)
            )
            .overlay {
                RoundedRectangle(cornerRadius: 10).stroke(colorGray.opacity(0.1), style: /*@START_MENU_TOKEN@*/StrokeStyle()/*@END_MENU_TOKEN@*/)
            }
    
    }
}

#Preview {
    ZStack {
        colorWhite
        RoundedRectangleItemView(text: "Male", isClick: true)
        
    }
}
