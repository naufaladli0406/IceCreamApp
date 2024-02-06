//
//  ProductModel.swift
//  IceCream
//
//  Created by Naufal Adli on 06/02/24.
//

import SwiftUI
import Foundation

struct Product: Identifiable{
    var id = UUID().uuidString
    var name : String
    var asset : String
    var price : String
    var image : String
}

var product = [
    Product(name: "Chocolate IceCream", asset: "1", price: "100", image: "choco"),
    Product(name: "Valila IceCream", asset: "2", price: "80", image: "vanila"),
    Product(name: "Combo IceCream", asset: "3", price: "50", image: "cone"),
    Product(name: "Valila IceCream", asset: "2", price: "80", image: "vanila"),
    Product(name: "Chocolate IceCream", asset: "1", price: "100", image: "choco")
]
