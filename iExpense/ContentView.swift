//
//  ContentView.swift
//  iExpense
//
//  Created by Ali Syed on 2025-07-21.
//

import Observation
import SwiftUI

struct ContentView: View {
    @State private var arrNum: [Int] = []
    @State private var count = 0
    
    var body: some View {
        NavigationStack {
            VStack {
                List {
                    ForEach(arrNum, id: \.self) { num in
                        Text("\(num)")
                    }
                    .onDelete(perform: removeRows)
                }
                
                Button("Generate new number") {
                    generateNewNumber()
                }
            }
            .toolbar {
                EditButton()
            }
        }
    }
    
    func generateNewNumber() {
        arrNum.append(count)
        count += 1
    }
    
    func removeRows(at offsets: IndexSet) {
        arrNum.remove(atOffsets: offsets)
    }
}

#Preview {
    ContentView()
}
