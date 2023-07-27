//
//  TypeTicketItemView.swift
//  MuaHoVeSo
//
//  Created by FE-Thong on 27/07/2023.
//

import SwiftUI

struct TypeTicketItemView: View {
    let typeTicketItem : TypeTicketItem
    var body: some View {
        HStack {
            Image(typeTicketItem.image)
            VStack(alignment: .leading ,content: {
                Text(typeTicketItem.lbTitle)
                Text(typeTicketItem.lbBody)
                    .font(.title)
                    .foregroundStyle(typeTicketItem.color)
                Text(typeTicketItem.lbFooter)
            })
            Spacer()
//            Image(systemName: <#T##String#>)
        }
        .padding()
        .frame(width: .infinity)
        .background(
            RoundedRectangle(cornerRadius: 12).fill(.white)
        )
    }
}

#Preview {
    ZStack {
        Color.red
        TypeTicketItemView(typeTicketItem: defaultTypeItem)
    }
}
