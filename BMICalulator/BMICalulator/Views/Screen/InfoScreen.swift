//
//  InfoScreen.swift
//  BMICalulator
//
//  Created by FE-Thong on 13/08/2023.
//

import SwiftUI

struct InfoScreen: View {
    var body: some View {
        NavigationStack {
            VStack(content: {

                  
                ScrollView {
                    Image("info")
                        .resizable()
                        .scaledToFit()
                    Text("Thông tin được sử dụng từ website của")
                    Link("Vinmec", destination: urlInfo!)
                }
            })
            .navigationTitle("Thông tin")


        }
    }
}

#Preview {
    InfoScreen()
}
