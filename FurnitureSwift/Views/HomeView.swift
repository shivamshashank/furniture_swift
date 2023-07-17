//
//  HomeView.swift
//  FurnitureSwift
//
//  Created by Shivam Shashank on 17/07/23.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var cartManager: CartManager
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            VStack(alignment: .leading) {
                HomeHeaderView()
                    .environmentObject(cartManager)
                
                SearchTextFieldView()
                
                Spacer().frame(height: 12)
                
                ImageSliderView()
                
                NewArrivalView()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(CartManager())
    }
}
