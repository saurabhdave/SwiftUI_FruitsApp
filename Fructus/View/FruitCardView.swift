//
//  FruitCardView.swift
//  Fructus
//
//  Created by Saurabh Dave on 1/11/23.
//

import SwiftUI

struct FruitCardView: View {
    
    // MARK: - PROPERTIES
    
    var fruitData: Fruit

    @State private var isAnimating:Bool = false
    
    // MARK: - BODY
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                
                Spacer()
                
                // FRUIT: IMAGE
                Image(fruitData.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: .black.opacity(0.15), radius: 8, x: 6, y: 8)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                    .animation(.easeOut(duration: 1), value: isAnimating)
                
                
                // FRUIT: TITLE
                Text(fruitData.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: .black.opacity(0.15), radius: 2, x: 2,  y: 2)
                
                // FRUIT: HEADLINE
                Text(fruitData.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                    .font(.headline)
                
                Spacer()
                
                // BUTTON: START
                StartButtonView()
                
                Spacer()
                
            } //: VSTACK
        } //: ZSTACK
        .onAppear {
            isAnimating = true
        }
        .frame(minWidth: .zero, maxWidth: .infinity, minHeight: .zero, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(colors: fruitData.gradientColors, startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
    }
    
}

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruitData: fruitsData[1])
    }
}
