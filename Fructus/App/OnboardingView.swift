//
//  OnboardingView.swift
//  Fructus
//
//  Created by Saurabh Dave on 1/11/23.
//

import SwiftUI

struct OnboardingView: View {
    
    //MARK: - PROPERTIES
    
    //MARK: - BODY
    var body: some View {
        TabView {
            ForEach (fruitsData[0...5]) { fruit in
                FruitCardView(fruitData: fruit)
            }//: FOR LOOP
        }//: TAB
        .tabViewStyle(.page)
        .padding(.vertical, 20)
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
