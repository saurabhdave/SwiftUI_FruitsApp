//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Saurabh Dave on 1/12/23.
//

import SwiftUI

struct SettingsRowView: View {
    // MARK: - PROPERTIES
    var name: String
    var content: String?
    var linkLable: String?
    var linkDestination: String?
    
    // MARK: - BODY
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name).foregroundColor(.gray)
                Spacer()
                if let content = content {
                    Text(content)
                } else if let linkLable = linkLable, let linkDestination = linkDestination {
                    Link(linkLable, destination: URL(string: "https://\(linkDestination)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(.pink)
                } else {
                    EmptyView()
                }
            }
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(name: "Developer", content: "Saurabh")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
