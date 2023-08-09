//
//  HeightItemView.swift
//  BMICalulator
//
//  Created by FE-Thong on 08/08/2023.
//

import SwiftUI

struct HeightItemView: View {
    let textTitle : String
    let width: CGFloat
    let height: CGFloat

    @Binding var value: Double
    let isUseSlider: Bool
    let rangeMax: Double
    let rangeMin: Double
    func updateValue(isIncrease: Bool) {
        if (value <= rangeMin || value >= rangeMax) {
            return
        }
        let valueTamp = isIncrease ? 1 : -1
        value = value + Double(valueTamp)
    }
    var body: some View {
        VStack(spacing: 20) {
            Text(textTitle)
                .foregroundStyle(colorGray)
            Text("\(Int(value))")
                .font(.system(size: 50, weight: .regular, design: .rounded))
            if isUseSlider {
                Slider(
                    value: $value,
                    in: Double(rangeMin)...Double(rangeMax),
                    onEditingChanged: { editing in
                    }
                )
                .tint(colorOrgane)
                .padding(.horizontal)
            }else {
                HStack(alignment: .center, spacing: 50, content: {
                    Button(action: {
                        updateValue(isIncrease: false)
                    }, label: {
                        ImageIconView(imageName: "minus", size: 20)
                    })
                   
                    Button(action: {
                        updateValue(isIncrease: true)
                    }, label: {
                        ImageIconView(imageName: "plus", size: 20)
                    })
                  
                })
                .buttonStyle(.plain)
            }
        }
        .frame(width: width, height: height, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .background(
            RoundedRectangle(cornerRadius: 10).fill(colorWhite.shadow(.drop(color: colorGray.opacity(0.2), radius: 10, x: 0, y: 0)), style: /*@START_MENU_TOKEN@*/FillStyle()/*@END_MENU_TOKEN@*/)
        )
        
        
    }
}

#Preview {
    ZStack {
        colorWhite
        HeightItemView(textTitle: "Height", width: WIDTH_SCREEN/2, height: 200 ,value: .constant(170.0), isUseSlider: true ,rangeMax: 200, rangeMin: 0)
    }
}
