//
//  ViewOne.swift
//  ClothingApp
//
//  Created by NIBMPC04PC03 on 2024-03-17.
//

import SwiftUI

struct HomeView: View {
    @State private var searchText = ""
    
    var body: some View {
        ZStack{
            VStack{
                HStack{
                    VStack{
                        Text("Beauty comes")
                            .font(.system(size: 30, weight: .light, design: .serif))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text("When")
                            .font(.system(size: 35, weight: .bold, design: .serif))
                            .foregroundColor(.pink.opacity(0.80))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text("Fashion Succeeds")
                            .font(.system(size: 30, weight: .light, design: .serif))
                            .frame(maxWidth: .infinity, alignment: .leading)
                    }.padding()
                    
                }
          
                ScrollView(.horizontal){
                    HStack{
                        ForEach(MockData.items){item in
                            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                                .containerRelativeFrame( .horizontal, count:2, spacing: 16)
                                .foregroundColor(item.color)
                        }
                    }
                    .contentMargins(.horizontal, 16,for: .scrollContent)
                    
                }
                Spacer()
                
            }
            
        }
    }
}

#Preview {
    HomeView()
}



struct Item: Identifiable{
    let id = UUID()
    let color : Color
}

struct MockData{
    static var items = [Item(color: .pink),
                        Item(color: .black),
                        Item(color: .green),
                        Item(color: .gray),
                        Item(color: .blue),
                        Item(color: .yellow)]
}
