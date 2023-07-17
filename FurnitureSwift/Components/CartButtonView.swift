//
//  CartButtonView.swift
//  FurnitureSwift
//
//  Created by Shivam Shashank on 17/07/23.
//

import SwiftUI

struct CartButtonView: View {
    var numberOfProducts : Int
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            Image(systemName: "bag.fill")
                .frame(width: 24, height: 24)
                .foregroundColor(.black)
                .padding(2)
            
            if numberOfProducts > 0 {
                Text("\(numberOfProducts)")
                    .font(.caption2)
                    .foregroundColor(.white)
                    .frame(width: 14, height: 14)
                    .background(.green)
                    .clipShape(Circle())
            }
        }
    }
}

struct CartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CartButtonView(numberOfProducts: 3)
    }
}
