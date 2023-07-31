//
//  Utils.swift
//  BookTicketFilm
//
//  Created by FE-Thong on 31/07/2023.
//

import Foundation
struct Utils {
    func converNumberToMoney(number: Int) -> String{
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        let formattedAmount = formatter.string(from: NSNumber(value: number))!
        return formattedAmount
        
    }
}


