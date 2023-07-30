//
//  ItemInfoModel.swift
//  BookTicketFilm
//
//  Created by FE-Thong on 29/07/2023.
//

import Foundation
import SwiftUI

struct ItemInfoModel: Identifiable {
    var id =  UUID()
    var text: LocalizedStringKey
    var value: String
    var image: String
    var color: Color
    
    static func DefaultItemInfo()-> ItemInfoModel {
        
        ItemInfoModel(
            text: "Vé đã mua",
            value: "2",
            image: "ticket.fill",
            color: colorPink)
    }
}

