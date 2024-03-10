//
//  CatalogItem.swift
//  StockWise
//
//  Created by Vlad Gershun on 3/10/24.
//

import Foundation

struct CatalogItem: Identifiable, Hashable {
    
    static func == (lhs: CatalogItem, rhs: CatalogItem) -> Bool {
        return lhs.id == rhs.id
    }
    
    var id: String
    var name: String
    var price: Double
    var foundIn: String
    var note: String
    var category: String
    //    var image: Image
    
}

extension CatalogItem {
    static let mochItems: [CatalogItem] = [
        CatalogItem(id: "F47AC10B-58CC-4372-A567-0E02B2C3D479",
                    name: "Condensed Milk",
                    price: 23.1,
                    foundIn: "Convenience store",
                    note: "Used for Coffee",
                    category: "In House Drinks"),
        CatalogItem(id: "F47AC10B-58CC-4372-A567-0E02B2C3D475",
                    name: "Coke",
                    price: 43.1,
                    foundIn: "Restaurant Depot",
                    note: "32 can boxes",
                    category: "Drinks"),
        CatalogItem(id: "F47AC10B-58CC-4372-A567-0E02B2C3D412",
                    name: "Diet Coke",
                    price: 12.2,
                    foundIn: "Restaurant Depot",
                    note: "32 can boxes",
                    category: "Drinks"),
        CatalogItem(id: "F47AC10B-58CC-4372-A567-0122B2C3D475",
                    name: "Sprite",
                    price: 3,
                    foundIn: "Restaurant Depot",
                    note: "32 can boxes",
                    category: "Drinks"),
        CatalogItem(id: "F47AC10B-58CC-4372-F567-0E02B2C3D475",
                    name: "Sugar",
                    price: 21.95,
                    foundIn: "Hau Hau Market",
                    note: "50lbs bags",
                    category: "Condiments & Dressings"),
        CatalogItem(id: "F47AC10B-DDCC-4372-A567-0E02B2C3D475",
                    name: "Chicken Flavor Broth",
                    price: 39.31,
                    foundIn: "Restaurant Depot",
                    note: "234324",
                    category: "Condiments & Dressings"),
        CatalogItem(id: "F47AC10B-58CC-4372-A518-0E02B2C3D475",
                    name: "Frying Oil (Creamy)",
                    price: 23.99,
                    foundIn: "Restaurant Depot",
                    note: "55",
                    category: "Condiments & Dressings"),
        CatalogItem(id: "F47AC10B-58CC-BEEF-A567-0E02B2C3D475",
                    name: "Banh Mi",
                    price: 23,
                    foundIn: "Xuyen Bakery",
                    note: "hello",
                    category: "Bakery"),
        CatalogItem(id: "F47AC10B-58CC-DEAD-A567-0E02B2C3D475",
                    name: "Banh Mi Mini",
                    price: 34,
                    foundIn: "Xuyen Bakery",
                    note: "nil",
                    category: "Bakery"),
        CatalogItem(id: "F47AC10B-58CC-4372-A567-0E02B2C3379",
                    name: "Condensed Milk",
                    price: 23.1,
                    foundIn: "Convenience store",
                    note: "Used for Coffee",
                    category: "In House Drinks"),
        CatalogItem(id: "F47AC10B-58CC-4372-A567-0E02B2C3D455",
                    name: "Coke",
                    price: 43.1,
                    foundIn: "Restaurant Depot",
                    note: "32 can boxes",
                    category: "Drinks"),
        CatalogItem(id: "F47AC10B-58CC-4372-A567-0E02B2C3D414",
                    name: "Diet Coke",
                    price: 12.2,
                    foundIn: "Restaurant Depot",
                    note: "32 can boxes",
                    category: "Drinks")
    ]
}
