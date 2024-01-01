//
//  TransactionCardVIew.swift
//  Expense Tracker
//
//  Created by Naman Vaishnav on 01/01/24.
//

import SwiftUI

struct TransactionCardVIew: View {
    let transaction: Transaction
    var body: some View {
        HStack(spacing: 12) {
            Text(transaction.title.prefix(1))
                .font(.title)
                .fontWeight(.semibold)
                .foregroundStyle(.white)
                .frame(width: 45, height: 45)
                .background(transaction.color.gradient, in: .circle)
            
            VStack(alignment: .leading, spacing: 4) {
                Text(transaction.title)
                    .foregroundStyle(Color.primary)
                
                Text(transaction.remarks)
                    .font(.caption)
                    .foregroundStyle(Color.primary.secondary)
                
                Text(format(date: transaction.dateAdded , format: "dd MMM yyyy"))
                    .font(.caption2)
                    .foregroundStyle(.gray)
            }
            .lineLimit(1)
            .hSpacing(.leading)
            
            Text(currencyString( transaction.amount ,allowDigits:2))
                .fontWeight(.semibold)
        }
        .padding(.horizontal, 15)
        .padding(.vertical, 10)
        .background(.background, in: .rect(cornerRadius: 10))
    }
}

#Preview {
    TransactionCardVIew(transaction: sampletransaction[0])
}
