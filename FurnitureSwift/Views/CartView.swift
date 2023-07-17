//
//  CartView.swift
//  FurnitureSwift
//
//  Created by Shivam Shashank on 17/07/23.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        if cartManager.paymentSuccess {
            Text("Thanks for your purchase! You'll get cozy in our comfy sweaters soon! You'll also receive an email confirmation shortly.")
                .font(.title)
                .navigationTitle(Text("My Cart"))
        } else if cartManager.products.isEmpty {
            Text("Your cart is empty")
                .font(.title)
                .navigationTitle(Text("My Cart"))
        } else {
            ScrollView {
                ForEach(cartManager.products, id: \.id) { product in
                    CartProductView(product: product)
                    Spacer().frame(height: 20)
                }
                
                HStack {
                    Text("Your total is")
                    Spacer()
                    Text("$\(String(format: "%.2f", cartManager.total))")
                }
                
                Spacer().frame(height: 16)
                
                PaymentButton(action: cartManager.pay)
            }
            .padding()
            .navigationTitle(Text("My Cart"))
            .onDisappear {
                if cartManager.paymentSuccess {
                    cartManager.paymentSuccess = false
                }
            }
        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager())
    }
}
