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
        ZStack(alignment: .topTrailing) {
            
            AsyncImage(url: URL(string: "http://localhost:8080/images/\(item.id)"), scale: 1) { image in
                image
                    .resizable()
                //                            .scaledToFill()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .clipped()
            } placeholder: {
                Image(systemName: "photo.on.rectangle")
                    .resizable()
//                ProgressView()
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .aspectRatio(1.0, contentMode: .fit)
            }
            
            
        }
        .overlay (details, alignment: .bottom)
        .cornerRadius(10)
        .overlay {
            RoundedRectangle(cornerRadius: 10, style: .continuous)
                .stroke(Color.secondary, lineWidth: 3)
        }
        .frame(width: 200, height: 200)
        
        
    }
    
    private var details: some View {
        VStack {
            Text(item.name)
                .frame(maxWidth: .infinity)
                .font(.headline)
                .foregroundColor(.white)
                .padding()
                .background(Color.black.opacity(0.7))
        }
        
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
