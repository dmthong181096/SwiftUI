//
//  HomeScreen.swift
//  BMICalulator
//
//  Created by FE-Thong on 08/08/2023.
//

import SwiftUI

struct HomeScreen: View {
    var body: some View {
        
       
        
        ZStack {
            colorWhite.ignoresSafeArea()
            VStack {
                //MARK: - HEDER
                HStack(content: {
                    ImageIconView(imageName: imgTextAlignLeft, size: 20)
                    Spacer()
                    Text("BMI Calculator")
                        .font(.title)
                        .foregroundStyle(colorGray)
                    Spacer()
                    ImageIconView(imageName: imgPerson, size: 20)
                  
                })
                Spacer()
                //MARK: - BODY
                VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 30, content: {
                    HStack(content: {
                        RoundedRectangleItemView(text: "Male", isClick: false)
                        Spacer()
                        RoundedRectangleItemView(text: "Female", isClick: true)
                    })
                    
                    HStack(content: {
                        RoundedRectangleItemView(text: "Metric system", isClick: true)
                        Spacer()
                        RoundedRectangleItemView(text: "Imperial system", isClick: false)
                    })
                    
                    HeightItemView(
                        textTitle: "Height",
                        width: WIDTH_SCREEN/1.1,
                        height: 200,
                        value: 170,
                        isUseSlider: true,
                        rangeMax: 340,
                        rangeMin: 0)
                    HStack(alignment: .center, spacing: 30, content: {
                        HeightItemView(
                            textTitle: "Weight",
                            width: WIDTH_SCREEN/2.4,
                            height: 200,
                            value: 62,
                            isUseSlider: false,
                            rangeMax: 100,
                            rangeMin: 0)
                        HeightItemView(
                            textTitle: "Age",
                            width: WIDTH_SCREEN/2.4,
                            height: 200,
                            value: 35,
                            isUseSlider: false,
                            rangeMax: 100,
                            rangeMin: 0)
                    })
                })
   
                Spacer()
                
                
                
                //MARK: - FOOTER
                Button(action: {
                    print("CLICK")
                }, label: {
                    ButtonView(text: "CALCULATE")
                })
            }
            .frame(width: WIDTH_SCREEN/1.1, alignment: .center)
        }
        
        

    }
}

#Preview {
    HomeScreen()
}
