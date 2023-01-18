//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by Saurabh Dave on 1/12/23.
//

import SwiftUI

struct FruitNutrientsView: View {
    
    // MARK: - PROPERTIES
    var fruit: Fruit
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protien", "Vitamins", "Minerals"]
    
    // MARK: - BODY
    var body: some View {
        
        GroupBox() {
            DisclosureGroup("Nutiritional value per 100g") {
                ForEach(0..<nutrients.count, id: \.self) { item in
                    Spacer()
                    Divider().padding(.vertical, 2)
                    HStack() {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(.body.bold())
                        
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        }
        
    }
}

struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitsData[2])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
