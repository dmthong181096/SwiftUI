//
//  ItemInfoView.swift
//  BookTicketFilm
//
//  Created by FE-Thong on 29/07/2023.
//

import SwiftUI

struct ItemInfoView: View {
    let item : ItemInfoModel
    var body: some View {
        VStack(spacing: 20 , content: {
            Image(systemName: item.image)
                .resizable()
                .scaledToFit()
                .frame(width: 20, height: 20)
                .foregroundStyle(item.color)
                .padding()
                .background(
                    Circle().fill(item.color.opacity(0.1), style: FillStyle())
                )
            Text(item.value)
                .font(.system(size: 20, weight: .bold, design: .rounded))
            Text(item.text)
                .font(.footnote)
                .lineLimit(1)
               
        })
    }
}

#Preview {
    ItemInfoView(item: .DefaultItemInfo())
}
