//
//  CartManager.swift
//  FurnitureSwift
//
//  Created by Shivam Shashank on 17/07/23.
//

import Foundation

class CartManager: ObservableObject {
    @Published private(set) var products: [Product] = []
    
    @Published private(set) var total: Double = 0
    
    func addToCart(product: Product) {
        products.append(product)
        total += product.price
    }
    
    func removeFromCart(product: Product) {
        products = products.filter{ $0.id != product.id}
        total -= product.price
    }
}
