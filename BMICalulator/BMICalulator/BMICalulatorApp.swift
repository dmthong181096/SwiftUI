//
//  BMICalulatorApp.swift
//  BMICalulator
//
//  Created by FE-Thong on 08/08/2023.
//

import SwiftUI

@main
struct BMICalulatorApp: App {
    var body: some Scene {
        WindowGroup {
            HomeScreen(height: 170, weight: 70, age: 35)
        }
    }
}
