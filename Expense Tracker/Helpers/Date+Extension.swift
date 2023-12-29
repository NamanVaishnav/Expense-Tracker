//
//  Date+Extension.swift
//  Expense Tracker
//
//  Created by Naman Vaishnav on 29/12/23.
//

import Foundation
import SwiftUI

extension Date{
    var startOfMonth: Date {
        let calender = Calendar.current
        let component = calender.dateComponents([.year, .month], from: self)
        
        return calender.date(from: component) ?? self
    }
    
    var endOfMonth: Date {
        let calender = Calendar.current
        
        return calender.date(byAdding: .init(month: 1, minute: -1), to: self.startOfMonth) ?? self
    }
}
