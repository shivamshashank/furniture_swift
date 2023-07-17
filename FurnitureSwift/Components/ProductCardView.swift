//
//  ProductCardView.swift
//  FurnitureSwift
//
//  Created by Shivam Shashank on 17/07/23.
//

import SwiftUI

struct ProductCardView: View {
    @StateObject var cartManager = CartManager()
    var product: Product
    
    let bounds = UIScreen.main.bounds
    
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            Color("kSecondary")
            
            VStack(alignment: .leading) {
                Image(product.image)
                    .resizable()
                    .cornerRadius(12)
                
                Text(product.name)
                    .font(.headline)
                
                Spacer()
                
                Text(product.supplier)
                    .font(.caption)
                    .foregroundColor(.gray)
                
                Spacer().frame(height: 4)
                
                Text("$ \(String(format: "%.2f", product.price))")
                    .bold()
            }
            .padding(8)
            
            Button {
                cartManager.addToCart(product: product)
            } label: {
                Image(systemName: "plus.circle.fill")
                    .resizable()
                    .foregroundColor(Color("kPrimary"))
                    .frame(width: 32, height: 32)
            }
            .padding(8)
        }
        .cornerRadius(12)
        .frame(width: bounds.width * 0.42, height: bounds.height * 0.28)
    }
}

struct ProductCardView_Previews: PreviewProvider {
    static var previews: some View {
        ProductCardView(product: productsList[2])
            .environmentObject(CartManager())
    }
}
