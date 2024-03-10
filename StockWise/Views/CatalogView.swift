//
//  CatalogView.swift
//  StockWise
//
//  Created by Vlad Gershun on 3/9/24.
//

import SwiftUI

struct CatalogView: View {
    
    @EnvironmentObject var vm: ShoppingVM
    
    let columns = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        GeometryReader { geo in
            ScrollView {
                LazyVGrid(columns: columns) {
                    ForEach(vm.catalogItems) { item in
                        CatalogGridItemView(item: item)
                        
                    }
                    .frame(width: geo.size.width * 0.3, height: geo.size.height * 0.3)
                }
                .padding()
            }
            .scrollIndicators(.never)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        
        
        
        
        
    }
}

#Preview {
    CatalogView()
}
