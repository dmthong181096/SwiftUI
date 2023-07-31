//
//  FoodScreenView.swift
//  BookTicketFilm
//
//  Created by FE-Thong on 29/07/2023.
//

import SwiftUI

struct FoodScreenView: View {
    @State var theater: String
    @State var date: String
    @State var shouldPresentSheet = false
    let layoutGrid = [
        GridItem(),
        GridItem()
    ]
    var body: some View {
        NavigationStack{
            
            ZStack {
                Color.gray.opacity(0.2).ignoresSafeArea( edges: /*@START_MENU_TOKEN@*/.bottom/*@END_MENU_TOKEN@*/)
                ScrollView {
                    VStack(alignment: .leading) {
                        HStack( content: {
                            Image(IMG_BORN)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50)
                                .padding(.vertical,5)

                            VStack(alignment: .leading, spacing: 0, content: {
                                Text(HEADER_FOOD)
                                    .font(.footnote)
                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                Text(CAPTION_FOOD)
                                    .font(.caption)
                            })
                            Spacer()
                        })
                    }
                   
                    .background(
                        RoundedRectangle(cornerRadius: CORNER_RADIUS).stroke(colorPink, lineWidth: /*@START_MENU_TOKEN@*/1.0/*@END_MENU_TOKEN@*/).fill(.colorPink.opacity(0.2), style: FillStyle())
                    )
                    .padding(.top)
                    VStack {
                        HStack {
                            TextField("Nhận tại", text: $theater)
                            Image(systemName: "chevron.right")
                                .foregroundStyle(colorPink)
                        }
                        .padding()
                        .overlay {
                            RoundedRectangle(cornerRadius: CORNER_RADIUS).stroke(.gray, lineWidth: 0.5)
                        }
                        HStack {
                            TextField("Ngày nhận", text: $date)
                            Image(systemName: "calendar")
                                .foregroundStyle(colorPink)
                        }
                        .padding()
                        .overlay {
                            RoundedRectangle(cornerRadius: CORNER_RADIUS).stroke(.gray, lineWidth: 0.5)
                        }

                    }
                    .padding()
                    .background(
                        RoundedRectangle(cornerRadius: CORNER_RADIUS).fill(.white, style: /*@START_MENU_TOKEN@*/FillStyle()/*@END_MENU_TOKEN@*/)
                    )
                   
                    
                    
                    //BODY
                    LazyVGrid(columns: layoutGrid, content: {
                        Button(action: {
                            withAnimation(.easeInOut) {
                                shouldPresentSheet = true
                            }
                         
                           
                        }, label: {
                            FoodItemView(foodItem: .DefaultItemFood())
                           
                        }).buttonStyle(.plain)
                    
                    })
                    
                    
                }
                .sheet(isPresented: $shouldPresentSheet, content: {
                    AddFoodToCartView(foodItem: .DefaultItemFood())
                })

                .scrollIndicators(.hidden)
                .padding(.horizontal)
                .navigationTitle("Mua bắp nước")
                .navigationBarTitleDisplayMode(.inline)
            }
//            if shouldPresentSheet {
//                    AddFoodToCartView(foodItem: .DefaultItemFood(), isAnim: $shouldPresentSheet)
//                            .frame(height: HEIGHT_SCREEN/1.5)
//                
//            }
    
        }
    }
}

#Preview {
    FoodScreenView(theater: "", date: "")
}
