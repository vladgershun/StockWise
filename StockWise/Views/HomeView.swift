//
//  HomeView.swift
//  StockWise
//
//  Created by Vlad Gershun on 3/9/24.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        GeometryReader { geo in
            HStack {
                
                CatalogView()
                    .frame(maxWidth: geo.size.width * 0.7, maxHeight: .infinity)
//                    .border(.red)
                
                RoundedRectangle(cornerRadius: 25.0, style: .continuous)
                    .frame(maxWidth: 1, maxHeight: .infinity)
                
                BasketView()
                    .frame(maxWidth: geo.size.width * 0.3, maxHeight: .infinity)
//                    .border(.blue)
            }
            .padding() 
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        
    }
}

#Preview {
    HomeView()
}

