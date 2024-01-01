//
//  DateFilterView.swift
//  Expense Tracker
//
//  Created by Naman Vaishnav on 01/01/24.
//

import SwiftUI

struct DateFilterView: View {
    @State var start: Date
    @State var end: Date
    var onClose : () -> ()
    var onSubmit : (Date, Date) -> ()
    var body: some View {
        VStack (spacing: 15) {
            DatePicker("Start Date", selection: $start,  displayedComponents: [.date])
            
            DatePicker("End Date", selection : $end , displayedComponents: [.date])
            
            HStack(spacing: 15) {
                Button(action: {
                    onClose()
                }, label: {
                    Text("Cancel")
                })
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.roundedRectangle(radius: 5))
                .tint(.red)
                
                Button(action: {
                    onSubmit(start, end)
                }, label: {
                    Text("Filter")
                })
                .buttonStyle(.borderedProminent)
                .buttonBorderShape(.roundedRectangle(radius: 5))
                .tint(.red)
            }
            .padding(.top, 10)
        }
        .padding(15)
        .background(.bar, in: .rect(cornerRadius: 10))
        .padding(.horizontal, 30)
    }
}
//
//#Preview {
//    DateFilterView()
//}
