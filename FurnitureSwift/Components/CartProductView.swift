//
//  CartProductView.swift
//  FurnitureSwift
//
//  Created by Shivam Shashank on 17/07/23.
//

import SwiftUI

struct CartProductView: View {
    @EnvironmentObject var cartManager: CartManager
    var product: Product
    
    var body: some View {
        HStack {
            Image(product.image)
                .resizable()
                .frame(width: 60, height: 60)
                .cornerRadius(12)
            
            Spacer().frame(width: 24)
            
            VStack(alignment: .leading) {
                Text(product.name)
                    .bold()
                
                Text("$\(String(format: "%.2f", product.price))")
                    .bold()
            }
            
            Spacer()
            
            Image(systemName: "trash")
                .resizable()
                .foregroundColor(.red)
                .frame(width: 24, height: 24)
                .onTapGesture {
                    cartManager.removeFromCart(product: product)
                }
        }
        .padding(8)
        .background(Color("kSecondary"))
        .cornerRadius(12)
    }
}

struct CartProductView_Previews: PreviewProvider {
    static var previews: some View {
        CartProductView(product: productsList[4])
    }
}
