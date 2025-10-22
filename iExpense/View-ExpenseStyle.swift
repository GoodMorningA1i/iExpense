//
//  View-ExpenseStyle.swift
//  iExpense
//
//  Created by Ali Syed on 2025-10-22.
//

import SwiftUI

extension View {
    func style(for item: ExpenseItem) -> some View {
        if item.amount < 10 {
            return self.font(.title3)
        } else if item.amount < 100 {
            return self.font(.title2)
        } else {
            return self.font(.title)
        }
    }
}
