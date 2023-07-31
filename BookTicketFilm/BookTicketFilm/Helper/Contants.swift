//
//  Contants.swift
//  BookTicketFilm
//
//  Created by FE-Thong on 29/07/2023.
//

import Foundation
import SwiftUI


let colorBG = Color("BGColor")
let colorGreen = Color("colorGreen")
let colorPink = Color("colorPink")
let colorYellow = Color("colorYellow")
let colorBlue = Color("colorBlue")

//contant
let DATA_ITEM_INFO: [ItemInfoModel] = [
    ItemInfoModel(text: LocalizedStringKey("Vé đã mua"), value: "2", image: "ticket", color: colorPink),
    ItemInfoModel(text: LocalizedStringKey("Phim đã xem"), value: "1", image: "eye", color: colorGreen),
    ItemInfoModel(text: LocalizedStringKey("Đánh giá"), value: "0", image: "star", color: colorYellow),
    ItemInfoModel(text: LocalizedStringKey("Bình luận"), value: "0", image: "message", color: colorBlue),
]
let WIDTH_SCREEN = UIScreen.main.bounds.width
let HEIGHT_SCREEN = UIScreen.main.bounds.height
let CORNER_RADIUS = 10.0
 
//let image
let IMG_BORN = "imgBorn"

//Text
let HEADER_FOOD = "Mùi gì mà thơm thơm thế?"
let CAPTION_FOOD = "Nhớ vị bắp? Đặt ngay trên MoMo rẻ hơn tại rạp á"


