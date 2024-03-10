//
//  CatalogGridItemView.swift
//  StockWise
//
//  Created by Vlad Gershun on 3/10/24.
//

import SwiftUI

struct CatalogGridItemView: View {
    
    var item: CatalogItem
    
    var body: some View {
        RoundedRectangle(cornerRadius: 20, style: .continuous)
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .overlay {
                VStack {
                    Text(item.name)
                    Text(item.price, format: .number)
                    Text(item.foundIn)
                    Text(item.category)
                }
                
            }
            .background(.ultraThinMaterial)
            .padding()
    }
}

#Preview {
    CatalogGridItemView(item: CatalogItem(id: "F47AC10B-58CC-4372-A567-0E02B2C3D479",
                                          name: "Condensed Milk",
                                          price: 23.2,
                                          foundIn: "Convenience store",
                                          note: "Used for Coffee",
                                          category: "In House Drinks"))
}
