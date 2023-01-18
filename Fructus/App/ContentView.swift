//
//  ContentView.swift
//  Fructus
//
//  Created by Saurabh Dave on 1/11/23.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - PROPERTIES
    @State private var isShowingSettings = false
    
    var fruits: [Fruit] = fruitsData
    
    // MARK: - BODY
    var body: some View {
        NavigationStack{
            List(fruits.shuffled()) { fruit in
                NavigationLink(destination: FruitDetailView(fruit: fruit)) {
                    FruitRowView(fruit: fruit)
                        .padding(.vertical, 4)
                }
            }//: LIST
            .listStyle(.plain)
            .listRowSeparator(.hidden)
            .navigationTitle("Fruits")
            .toolbar {
                Button {
                    isShowingSettings = true
                } label: {
                    Image(systemName: "slider.horizontal.3")
                }//: BUTTON
                .sheet(isPresented: $isShowingSettings) {
                    isShowingSettings = false
                } content: {
                    SettingsView()
                }//: SHEET
            }//: TOOLBAR
        }//: NAVIGATION
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
            .preferredColorScheme(.dark)
    }
}
