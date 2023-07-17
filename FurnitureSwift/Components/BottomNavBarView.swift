//
//  CustomBottomNavBar.swift
//  FurnitureSwift
//
//  Created by Shivam Shashank on 17/07/23.
//

import SwiftUI

struct BottomNavBarView: View {
    @EnvironmentObject var cartManager: CartManager
    
    init() {
        UITabBar.appearance().backgroundColor = UIColor(Color("kSecondary"))
    }
    
    var body: some View {
        TabView {
            HomeView()
                .environmentObject(cartManager)
                .tabItem {
                    Image(systemName: "house")
                    Text("House")
                }
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass.circle")
                    Text("Search")
                }
            NotificationsView()
                .tabItem {
                    Image(systemName: "bell")
                    Text("Notifications")
                }
            CartView()
                .tabItem {
                    Image(systemName: "bag")
                    Text("Cart")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
        }
        .accentColor(Color("kPrimary"))
    }
}

struct BottomNavBarView_Previews: PreviewProvider {
    static var previews: some View {
        BottomNavBarView()
            .environmentObject(CartManager())
    }
}
