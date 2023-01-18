//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Saurabh Dave on 1/12/23.
//

import SwiftUI

struct FruitHeaderView: View {
    
    // MARK: - PROPERTIES
    
    var fruit: Fruit
    
    @State private var isAnimating = false
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            LinearGradient(colors: fruit.gradientColors, startPoint: .topLeading, endPoint: .bottomTrailing)
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: .black.opacity(0.15), radius: 8, x: 6, y: 8)
                .padding(.vertical, 20)
                .scaleEffect(isAnimating ? 1.0 : 0.6)
                .animation(.easeOut(duration: 0.5), value: isAnimating)
        }//: ZSTACK
        .frame(height: 440)
        .onAppear {
            isAnimating = true
        }
    }
}

struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData[2])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
