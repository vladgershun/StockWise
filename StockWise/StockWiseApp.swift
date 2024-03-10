//
//  StockWiseApp.swift
//  StockWise
//
//  Created by Vlad Gershun on 3/9/24.
//

import SwiftUI

@main
struct StockWiseApp: App {
    
    @StateObject var vm: ShoppingVM = .init()
    
    var body: some Scene {
        WindowGroup {
            TabsView()
        }
        .environmentObject(vm)
    }
}

