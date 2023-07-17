//
//  HomeHeaderView.swift
//  FurnitureSwift
//
//  Created by Shivam Shashank on 17/07/23.
//

import SwiftUI

struct HomeHeaderView: View {
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Image(systemName: "location.north.fill")
                    .resizable()
                    .frame(width: 24, height: 24)
                
                Text("Sanghai, China")
                    .font(.title2)
                    .foregroundColor(.gray)
                
                Spacer()
                
                NavigationLink(
                    destination: CartView().environmentObject(cartManager)
                ) {
                    CartButtonView(numberOfProducts: cartManager.products.count)
                }
            }
            
            Text("Find the most\nLuxurious ")
                .font(.largeTitle)
                .bold()
            
            + Text("Furniture")
                .font(.largeTitle)
                .bold()
                .foregroundColor(Color("kPrimary"))
        }
        .padding(.horizontal)
    }
}

struct HomeHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HomeHeaderView()
            .environmentObject(CartManager())
    }
}
