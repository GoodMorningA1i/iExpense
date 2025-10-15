//
//  ContentView.swift
//  iExpense
//
//  Created by Ali Syed on 2025-07-21.
//

import Observation
import SwiftUI

struct ContentView: View {
    struct User: Codable {
        let firstName: String
        let lastName: String
    }
    
    @State private var user = UserDefaults.standard.data(forKey: "user")

    var body: some View {
        Button("Save User") {
            let encoder = JSONEncoder()
            
            if let data = try? encoder.encode(user) {
                UserDefaults.standard.set(data, forKey: "user")
            }
        }
    }
}

#Preview {
    ContentView()
}
