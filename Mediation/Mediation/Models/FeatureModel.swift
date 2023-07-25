//
//  Feature.swift
//  Mediation
//
//  Created by FE-Thong on 25/07/2023.
//

import Foundation
import SwiftUI
struct FeatureModel: Identifiable {
    let id = UUID()
    let lightColor: Color
    let mediumColor: Color
    let darkColor: Color
    let title: String
    let iconName: String
}
