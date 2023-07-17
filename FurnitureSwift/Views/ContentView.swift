//
//  ContentView.swift
//  FurnitureSwift
//
//  Created by Shivam Shashank on 17/07/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var cartManager = CartManager()
    
    var body: some View {
        NavigationView {
            BottomNavBarView()
                .environmentObject(cartManager)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(CartManager())
    }
}
