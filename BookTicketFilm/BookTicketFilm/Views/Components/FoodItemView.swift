//
//  FoodItemView.swift
//  BookTicketFilm
//
//  Created by FE-Thong on 30/07/2023.
//

import SwiftUI

struct FoodItemView: View {
    let foodItem : ItemFoodModel
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            Image(foodItem.image)
                .resizable()
                .scaledToFit()
            .frame(width: WIDTH_SCREEN/2.2, height: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            VStack(alignment: .leading, spacing: 10){
                Text(foodItem.name)
                    .fontWeight(.semibold)
                Text(foodItem.description)
                    .font(.footnote)
                Text(foodItem.strPrice)
                    .font(.title3)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
            }
            .frame(width: WIDTH_SCREEN/2.2)
            .padding()
        
        }
        .frame(width: WIDTH_SCREEN/2.2, height: HEIGHT_SCREEN/2, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .background(
            RoundedRectangle(cornerRadius: CORNER_RADIUS).fill(.white, style: /*@START_MENU_TOKEN@*/FillStyle()/*@END_MENU_TOKEN@*/)
        )
  
    }
}

#Preview {
    ZStack {
        Color.gray
        FoodItemView(foodItem: .DefaultItemFood())
    }
}
