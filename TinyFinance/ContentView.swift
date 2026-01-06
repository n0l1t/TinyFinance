//
//  ContentView.swift
//  TinyFinance
//
//  Created by Максим Фурсов on 1/7/26.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("TinyFinance")
            .onAppear {
                let result = balance(sampleTransactions)
                print("Balance:", result)
            }
    }
}

#Preview {
    ContentView()
}
