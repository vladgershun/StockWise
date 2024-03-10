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
        
        ScrollView {
            LazyVGrid(columns: columns) {
                ForEach(vm.catalogItems, id:\.self) { value in
                    Text("\(value)")
                        .frame(width: 200, height: 200)
                        .overlay {
                            RoundedRectangle(cornerRadius: 20, style: .continuous)
                                .fill(.red)
                        }
                }
                
            }
            .padding()
        }
        .scrollIndicators(.never)
        
        
        
        
    }
}

#Preview {
    CatalogView()
}
