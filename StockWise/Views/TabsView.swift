//
//  TabView.swift
//  StockWise
//
//  Created by Vlad Gershun on 3/9/24.
//

import SwiftUI

struct TabView: View {
    var body: some View {
        TabView {
            
            HomeView()
                .tabItem { Label("Catalog", image: "sun.fill") }
            ShoppingListView()
                .tabItem { Label("Catalog", image: "sun.fill") }
        }
            
        
    }
}

#Preview {
    TabView()
}
