//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Saurabh Dave on 1/11/23.
//

import SwiftUI

struct FruitDetailView: View {
    
    // MARK: - PROPERTIES
    
    var fruit: Fruit
    
    // MARK: - BODY
    var body: some View {
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack (alignment: .center, spacing: 20) {
                    
                    FruitHeaderView(fruit:fruit)
                    
                    VStack(alignment: .leading, spacing: 20) {
                        
                        // TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        // HEADING
                        Text(fruit.headline)
                            .font(.headline)
                            .fontWeight(.medium)
                            .multilineTextAlignment(.leading)
                        
                        // NUTRIENTS
                        FruitNutrientsView(fruit: fruit)
                        
                        // SUBHEADING
                        Text("Learn more about \(fruit.title.uppercased())")
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        // DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                         
                        // LINK
                        SourceLinkView()
                            .padding(.top,10)
                            .padding(.bottom, 40)
                        
                    }//: VSTACK
                    .padding(.horizontal,20)
                    .frame(maxWidth: 640, alignment: .center)
                    
                }//: VSTACK
            }//: SCROLL
            .edgesIgnoringSafeArea(.top)
        }//: NAVIGATION
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[3])
    }
}
