//
//  ContentView.swift
//  ClothingApp
//
//  Created by NIBMPC04PC03 on 2024-03-17.
//

import SwiftUI

struct NavigationView: View {
    
    var body: some View {
        
        TabView{
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            FavoriteView()
                .tabItem {
                    Image(systemName: "heart")
                    Text("Favorite")
                }
            CartView()
                .tabItem {
                    Image(systemName: "cart")
                    Text("Cart")
                }
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
            
        }
        .accentColor(.black)
        .background(.blue)
        
    }
}

#Preview {
    NavigationView()
}
