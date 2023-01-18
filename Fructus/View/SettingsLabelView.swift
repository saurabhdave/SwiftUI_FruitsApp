//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by Saurabh Dave on 1/12/23.
//

import SwiftUI

struct SettingsLabelView: View {
    
    // MARK: - PROPERTIES
    var lableText: String
    var lableImage: String
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Text(lableText.uppercased()).fontWeight(.bold)
            Spacer()
            Image(systemName: lableImage)
        }
    }
}
struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(lableText: "Fructus", lableImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
    }
}
