//
//  ChipsView.swift
//  Mediation
//
//  Created by FE-Thong on 23/07/2023.
//

import SwiftUI

struct ChipsView: View {
    let chips: [String]
    @State private var selectedChipIndex = 0
    var body: some View {
        HStack {
            ForEach(0..<chips.count, id: \.self) { i in
                Text(chips[i])
                    .fixedSize(horizontal: true, vertical: true)
                    .multilineTextAlignment(.center)
                    .padding()
                    .frame(width: 100)
                    .background(
                        RoundedRectangle(cornerRadius: 10).fill( i == selectedChipIndex ? colorButtonBlue : colorDarkerButtonBlue )
                    )
                    .foregroundStyle(colorTextWhite)
                    .font(.footnote)
                    .onTapGesture {
                        withAnimation(.easeInOut(duration: 0.2)) {
                            selectedChipIndex = i
                        }
                       
                    }
            }
            Spacer()
          
        }
        .padding()
    }
}

#Preview {
    ChipsView(chips: [
        "Sweet sleep",
        "Insomnia",
        "Despression"
    ])
}
