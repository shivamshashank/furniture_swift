//
//  Product.swift
//  FurnitureSwift
//
//  Created by Shivam Shashank on 17/07/23.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var description: String
    var supplier: String
    var price: Double
}

var productsList = [
    Product(name: "Leather Couch", image: "furniture_1", description: "", supplier: "IKEA", price: 12.23),
    Product(name: "Nice Couch", image: "furniture_2", description: "", supplier: "Walmart", price: 12.23),
    Product(name: "Gray Couch", image: "furniture_3", description: "", supplier: "Home Depo", price: 12.23),
    Product(name: "Beautiful Couch", image: "furniture_4", description: "", supplier: "Walmart", price: 12.23),
    Product(name: "Outdoor Couch", image: "furniture_5", description: "", supplier: "IKEA", price: 12.23),
    Product(name: "Green Couch", image: "furniture_6x", description: "", supplier: "Home Depo", price: 12.23),
]
