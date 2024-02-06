//
//  ProductRowView.swift
//  IceCream
//
//  Created by Naufal Adli on 06/02/24.
//

import SwiftUI

struct ProductRowView: View {
    let product: Product
    let imageSize: CGFloat = 50
    
    var body: some View {
        HStack{
            ZStack{
                Color("C1").frame(width: 100,height: 100)
                    
                Image(product.image)
                    .resizable()
                    .frame(width: imageSize,height: imageSize)
                    .clipped()
            }
            
            VStack{
                Text(product.name)
                    .font(.headline)
                    .foregroundColor(.black)
                    .frame(minWidth: 0,maxWidth: .infinity, alignment: .leading)
                
                Text("$" + product.price)
                    .foregroundColor(.black)
                    .frame(minWidth: 0,maxWidth: .infinity, alignment: .leading)
                
            }
            
            Button(action: {}, label: {
                ZStack{
                    Circle()
                        .foregroundColor(.black)
                        .frame(width: 35,height: 35)
                    Image(systemName: "cart")
                        .font(.title3)
                        .foregroundColor(.white)
                }.padding(10)
            })
        }
        .frame(minWidth: 0,maxWidth: .infinity, alignment: .leading)
        .padding(10)
        .background(.white)
        .cornerRadius(10)
        .shadow(color: Color(.systemGray6), radius: 10)

    }
}

