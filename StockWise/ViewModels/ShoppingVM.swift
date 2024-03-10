//
//  ShoppingVM.swift
//  StockWise
//
//  Created by Vlad Gershun on 3/10/24.
//

import Foundation

final class ShoppingVM: ObservableObject {
    
    @Published var catalogItems = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    @Published var basketItems = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
    @Published var shoppingList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
}
