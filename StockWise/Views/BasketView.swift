//
//  BasketView.swift
//  StockWise
//
//  Created by Vlad Gershun on 3/9/24.
//

import SwiftUI

struct BasketView: View {
    
    @EnvironmentObject var vm: ShoppingVM
    
    var body: some View {
        VStack {
            Image(systemName: "basket.fill")
                .font(.largeTitle)

            Divider()
                .background(.primary)
                .padding([.leading, .trailing])
            
            ScrollView {
                ForEach(vm.basketItems, id: \.self) { item in
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                        .background(.ultraThinMaterial.opacity(0.1))
                }
                .padding()
            }
            .scrollIndicators(.never)
        }
        
    }
}

#Preview {
    BasketView()
}
