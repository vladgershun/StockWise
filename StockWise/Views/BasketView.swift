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
        ScrollView {
            ForEach(vm.basketItems, id: \.self) { value in
                Text("\(value)")
                    .frame(width: 220, height: 50)
                    .overlay {
                        RoundedRectangle(cornerRadius: 20, style: .continuous)
                            .fill(.red)
                    }
            }
            .padding()
        }
        .scrollIndicators(.never)
    }
}

#Preview {
    BasketView()
}
