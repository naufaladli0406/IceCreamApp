//
//  ContentView.swift
//  IceCream
//
//  Created by Naufal Adli on 06/02/24.
//

import SwiftUI

struct ContentView: View {
    @State var search = ""
    var body: some View {
        VStack {
            HStack{
                Button(action: {}, label: {
                    ZStack{
                        Circle()
                            .foregroundColor(Color.pink)
                            .frame(width: 35 , height: 35)
                        
                        Image(systemName: "arrow.left")
                            .foregroundColor(.white)
                    }
                    .padding(10)
                })
                
                Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                
                Button(action: {}, label: {
                    ZStack{
                        Circle()
                            .foregroundColor(Color.black)
                            .frame(width: 35 , height: 35)
                        
                        Image(systemName: "cart")
                            .foregroundColor(.white)
                    }
//                    .padding(10)
                })
                
                Button(action: {}, label: {
                    ZStack{
                        Circle()
                            .foregroundColor(Color.black)
                            .frame(width: 35 , height: 35)
                        
                        Image(systemName: "person.crop.circle.fill")
                            .font(.title)
                            .foregroundColor(.white)
                    }
                    .padding(10)
                })
            }
            
            HStack{
                VStack{
                    Text("Ice Cream")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                    
                    Text("Taste make it a beloved threat worldwide")
                        .foregroundColor(.gray)
                    
                    HStack{
                        
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                        TextField("What would you like to try?", text: $search)
                            
                    }
                    .padding(.vertical)
                    .padding(.horizontal)
                    .background(Color(.systemGray5))
                    .clipShape(Capsule())
                    .padding(10)
                    .frame(height: 60)
                    
                    NavigationView{
                        List{
                            ForEach(product){ item in
                               ProductRowView(product: item)
                                    .listRowInsets(.init(top: 0, leading: 0, bottom: 8, trailing: 0))
                                    .listRowBackground(RoundedRectangle(cornerRadius: 1).foregroundColor(.white))
                                    .listRowSeparator(.hidden)
                            }
                            .listRowSeparator(.hidden)
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

