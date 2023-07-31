//
//  AddFoodToCartView.swift
//  BookTicketFilm
//
//  Created by FE-Thong on 31/07/2023.
//

import SwiftUI

struct AddFoodToCartView: View {
    let SIZE: CGFloat = 30
    let foodItem : ItemFoodModel
//    @Binding var isAnim: Bool
    @State var quantity: Int = 1
    
    
    //func
    
    func changeQuantity(isIncrease: Bool){
        if isIncrease {
            quantity = quantity + 1
        }else {
            if (quantity != 1){
                quantity = quantity - 1
            }
          
        }
    }
    func getTotalPrice() -> String {
        let totalPrice = Utils().converNumberToMoney(number: Int(foodItem.price) * quantity)
        return totalPrice + "đ"
    }
    
    
    var body: some View {
        
            ZStack {
                        Color.gray.opacity(0.3).ignoresSafeArea()
                        VStack(spacing: 0) {
                            //TITLE
                        
                            ZStack {
                                Color.white.ignoresSafeArea()
                                    .frame( height: 80, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                Spacer()
                                HStack(content: {
                                    Spacer()
                                    Text("Combo")
                                        .font(.title2)
                                        .fontWeight(.semibold)
                                    Spacer()
                                    Image(systemName: "xmark")
                                        .resizable()
                                        .frame(width: SIZE/2, height: SIZE/2, alignment: .center)
                                })
                                .padding()
                            }
                            Spacer()
                            //BODY
                            VStack(alignment: .center) {
                                Image(foodItem.image)
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: WIDTH_SCREEN/2)
                                VStack(alignment: .leading, spacing: 15) {
                                    Text(foodItem.name)
                                        .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                    Text(foodItem.description)
                                    HStack(content: {
                                        Text(foodItem.strPrice)
                                            .font(.system(.title2, design: .rounded, weight: .bold))
                                        Spacer()
                                        HStack(content: {
                                            Button(action: {
                                                changeQuantity(isIncrease: false)
                                            }, label: {
                                                Image(systemName: "minus.circle")
                                                    .resizable()
                                                    .frame(width: SIZE, height: SIZE, alignment: .center)
                                            })
                                            .foregroundStyle(colorPink)
                            
                                            Text("\(quantity)")
                                                .fontWeight(.semibold)
                                                .frame(width: SIZE, height: SIZE, alignment: .center)
                                                .background(
                                                    RoundedRectangle(cornerRadius: 5).stroke(.gray.opacity(0.2),style: StrokeStyle())
                                                )
                                            Button(action: {
                                                changeQuantity(isIncrease: true)
                                            }, label: {
                                                Image(systemName: "plus.circle")
                                                    .resizable()
                                                    .frame(width: SIZE, height: SIZE, alignment: .center)
                                            })
                                            .foregroundStyle(colorPink)
                                        })

                                    })
                                }
                                .padding()
                             
                            }
                            .background(
                                RoundedRectangle(cornerRadius: CORNER_RADIUS).fill(.white)
                            )
                            .padding()
                            Spacer()
                            //FOOTER
                            ZStack {
                                Color.white.ignoresSafeArea()
                                VStack {
                                    Group {
                                        HStack(){
                                            Text("\(quantity) món")
                                            Spacer()
                                            Text("Thêm món")
                                                .font(.title2)
                                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                            Spacer()
                                            Text(getTotalPrice())
                                        }
                                        .foregroundStyle(.white)
                                        .padding(.horizontal)
                                    }
                                    .padding(.vertical,20)
                                    .background(
                                        RoundedRectangle(cornerRadius: CORNER_RADIUS).fill(colorPink, style: /*@START_MENU_TOKEN@*/FillStyle()/*@END_MENU_TOKEN@*/)
                                )
                                    Spacer()
                                }
                                .padding(.horizontal)
                                .padding(.top,10)
                                .padding(.bottom,20)
                            }
                            .frame(height: 80, alignment: .bottom)
                        }
                }
                    .ignoresSafeArea()
                    .presentationDetents([.height(HEIGHT_SCREEN/1.5),.large])
                    .presentationDragIndicator(.visible)

            
        
    }
}

#Preview {
    AddFoodToCartView(foodItem: .DefaultItemFood())
}
