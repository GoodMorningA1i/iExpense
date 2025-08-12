//
//  ContentView.swift
//  iExpense
//
//  Created by Ali Syed on 2025-07-21.
//

import Observation
import SwiftUI

struct ContentView: View {
    @State private var user = User()
    @State private var showSheet = false
    
    var body: some View {
        Button("Show Sheet") {
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet) {
            SecondView(name: "Ali Syed")
        }
    }
}

struct SecondView: View {
    @Environment(\.dismiss) var dismiss
    
    let name: String
    
    var body: some View {
        Text("Name: \(name)")
        Button("Dismiss") {
            dismiss()
        }
    }
}

@Observable
class User {
    var firstName = "Bilbo"
    var lastName = "Baggins"
}

#Preview {
    ContentView()
}
