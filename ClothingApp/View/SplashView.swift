//
//  SpalshView.swift
//  ClothingApp
//
//  Created by NIBMPC04PC03 on 2024-03-17.
//

import SwiftUI

struct SplashView: View {
    @State private var isActive = false;
    @State private var size = 0.8;
    @State private var opacity = 0.5;
    
    
    var body: some View {
        
                if(isActive){
                    NavigationView()
                }
        else{
            
            VStack{
                ZStack{
                    Color(.black)
                        .ignoresSafeArea()
                    VStack{
                        Image(systemName: "hare.fill")
                            .font(.system(size:80))
                            .foregroundColor(.white)
                        Text("Shopping App")
                            .font(Font.custom("Baskerville-Bold", size: 26))
                            .foregroundColor(.white.opacity(0.80))
                    }
                    .scaleEffect(size)
                    .opacity(opacity)
                    .onAppear{
                        withAnimation(.easeIn(duration: 1.2)){
                            self.size = 0.9
                            self.opacity = 1.0
                        }
                    }
                }
                .onAppear{
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2.0){
                        
                        withAnimation{
                            self.isActive = true
                        }
                        
                    }
                }
            }
            
        }
        
    }
}

#Preview {
    SplashView()
}
