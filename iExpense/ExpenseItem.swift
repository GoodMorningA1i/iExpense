//
//  ExpenseItem.swift
//  iExpense
//
//  Created by Ali Syed on 2025-10-17.
//

import Foundation

struct ExpenseItem: Identifiable, Codable {
    var id = UUID()
    let name: String
    let type: String
    let amount: Double
}
