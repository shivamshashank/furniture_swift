//
//  NewArrivalView.swift
//  FurnitureSwift
//
//  Created by Shivam Shashank on 17/07/23.
//

import SwiftUI

struct NewArrivalView: View {
    var body: some View {
        HStack {
            Text("New Arrival")
                .font(.title2)
                .fontWeight(.medium)
            
            Spacer()
            
            Image(systemName: "circle.grid.2x2.fill")
                .foregroundColor(Color("kPrimary"))
                .frame(width: 24, height: 24)
        }
        .padding(.horizontal)
        
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 16) {
                ForEach(productsList, id: \.id) { product in
                    ProductCardView(product: product)
                }
            }
        }
        .padding(.leading)
    }
}

struct NewArrivalView_Previews: PreviewProvider {
    static var previews: some View {
        NewArrivalView()
    }
}
