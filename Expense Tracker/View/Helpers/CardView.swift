//
//  CardView.swift
//  Expense Tracker
//
//  Created by Naman Vaishnav on 29/12/23.
//

import SwiftUI

struct CardView: View {
    var income: Double
    var expense: Double
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 15)
                .fill(.background)
            
            VStack(spacing: 0) {
                HStack(spacing: 12) {
                    Text("\(currencyString(income - expense))")
                        .font(.title.bold())
                    
                    Image(systemName: expense > income ? "chart.line.downtrend.xyaxis" : "chart.line.uptrend.xyaxis" )
                        .font(.title3)
                        .foregroundStyle(expense > income ? .red : .green)
                        
                }
                .padding(.bottom, 25)
                
                HStack(spacing: 0) {
//                    ForeEach(Category.allCases)
                }
            }
        }
    }
}

#Preview {
    ScrollView {
        CardView(income: 4590, expense: 2389)
        
    }
}
