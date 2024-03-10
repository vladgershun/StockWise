//
//  TabsView.swift
//  StockWise
//
//  Created by Vlad Gershun on 3/9/24.
//

import SwiftUI

struct TabsView: View {
    var body: some View {
        
        TabView {
            HomeView()
                .tabItem { Label("Catalog", systemImage: "carrot.fill") }
            ShoppingListView()
                .tabItem { Label("Shopping List", systemImage: "cart.fill") }
            
        }
        .navigationViewStyle(.stack)
    }
}

#Preview {
    TabsView()
}
