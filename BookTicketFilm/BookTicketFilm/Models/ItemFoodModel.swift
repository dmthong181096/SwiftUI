//
//  ItemFoodModel.swift
//  BookTicketFilm
//
//  Created by FE-Thong on 30/07/2023.
//

import Foundation

struct ItemFoodModel: Identifiable {
    var id = UUID()
    let name: String
    let image: String
    let description: String
    let price: Int
    let isBestSeller: Bool
    var strPrice: String  {
//        let money = String(price)
//        
//        return String(format: " %.02f đ", money)
        let money = Utils().converNumberToMoney(number: price).replacing(",", with: ".") + "đ"
        return money
    }
    
//    func converNumberToMoney(number: Int) -> String{
//        let formatter = NumberFormatter()
//        formatter.numberStyle = .decimal
//        let formattedAmount = formatter.string(from: NSNumber(value: number))!
//        return formattedAmount
//        
//    }
    
    static func DefaultItemFood() -> ItemFoodModel {
        ItemFoodModel(
            name: "MISSION IMPOSSIBLE COMBO 2023",
            image: "compo",
            description: """
            1 bắp lớn + nước siêu lớn
            Nhận trong ngày xem film*
            *Miễn phí đổi sang vị bắp Caramel*
            **Đổi vị phô mai phụ thu thêm tiền**
            """,
            price: 87000,
            isBestSeller: false)
    }
}
