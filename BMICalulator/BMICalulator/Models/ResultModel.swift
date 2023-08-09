//
//  ResultModel.swift
//  BMICalulator
//
//  Created by FE-Thong on 09/08/2023.
//

import Foundation

struct ResultModel: Identifiable {
    var id = UUID()
    var height: Int
    var weight: Int
    var BMI: Double {
        let height2 = (height * height) / 10000
        let BMI = weight / height2
        return Double(BMI)
    }
    var bodyState: String {
        var status = ""
        switch BMI {
        case 18.5..<25:
            status = "Normal"
        case 25..<30:
            status = "overweight"
        case 30..<35:
            status = "obesity grade 1"
        case 35...:
            status = "obesity grade 2"
        default:
            status = "Underweight"
        }
        return status
    }
}



