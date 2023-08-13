//
//  ResultScreen.swift
//  BMICalulator
//
//  Created by FE-Thong on 08/08/2023.
//

import SwiftUI

struct ResultScreen: View {
    let result: ResultModel
    let progress = 0.33
    let ringDiameter = 300.0
    @Environment(\.dismiss) private var dismiss
    private var rotationAngle: Angle {
        return Angle(degrees: (360.0 * progress))
    }
    var body: some View {
        ZStack {
            colorWhite.ignoresSafeArea()
            VStack {
                //MARK: - HEADER
                HStack(content: {
                    Button {
                        dismiss()
                    } label: {
                        ImageIconView(imageName: imgChevron, size: 20)
                    }
                    .buttonStyle(.plain)

                  
                    Spacer()
                    Text("Your BMI")
                        .font(.title)
                        .foregroundStyle(colorGray)
                    Spacer()
                    ImageIconView(imageName: imgPerson, size: 20)
                  
                })
                Spacer()
                //MARK: - BODY
                VStack(spacing: 50) {
                    Text(result.bodyState)
                        .font(.system(size: 45, weight: .bold, design: .rounded))
                    .foregroundStyle(colorOrgane)
                    
                    ZStack(content: {
                        Circle()
                            .fill(colorWhite, style: /*@START_MENU_TOKEN@*/FillStyle()/*@END_MENU_TOKEN@*/)
                            .shadow(color: colorGray.opacity(0.5), radius: 5, x: 2, y: 2)
                            .frame(width: WIDTH_SCREEN/1.9, alignment: .center)
                        
                        Circle()
                            .stroke(colorWhite.shadow(.inner(color: colorGray.opacity(0.2), radius: 3, x: 0, y: 0)), lineWidth: 12.0)
                            .frame(width: WIDTH_SCREEN/2.15, alignment: .center)
                        Circle()
                            .trim(from: 0.0, to: 0.7)
                            .stroke(colorOrgane,
                                    style: StrokeStyle(lineWidth: 12.0, lineCap: .round)
                            )
                            .frame(width: WIDTH_SCREEN/2.15, alignment: .center)
                            .rotationEffect(.degrees(-90))
                            .shadow(color: colorOrgane.opacity(0.5), radius: 5, x: 5, y: 5)
                        Text(String(result.BMI))
                            .font(.system(size: 50, weight: .regular, design: .rounded))
                        
                    })
                    Text("You have a normal body weight.")
                        .font(.system(size: 20, weight: .regular, design: .rounded))
                        .foregroundStyle(colorGray)
                }
                
                Spacer()
                //MARK: - FOOTER
                Button(action: {
                    
                }, label: {
                    ButtonView(text: "LEARN MORE")
                })
            }.frame(width: WIDTH_SCREEN/1.1, alignment: .center)
        }
    }
}

#Preview {
    ResultScreen(result: ResultModel(height: 175, weight: 70, ace: 35))
}
