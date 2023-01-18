//
//  SettingsView.swift
//  Fructus
//
//  Created by Saurabh Dave on 1/12/23.
//

import SwiftUI

struct SettingsView: View {
    
    // MARK: - PROPERTIES
    
    @Environment(\.dismiss) var dismiss
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack {
                    
                    // MARK: - SECTION 1
                    GroupBox {
                        Divider().padding(.vertical,4 )
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("Most fruits are naturally low in fat, sodium and calories.")
                                .font(.footnote)
                        }
                    } label: {
                        SettingsLabelView(lableText: "Fructus", lableImage: "info.circle")
                    }
                    
                    // MARK: - SECTION 2
                    GroupBox {
                        Divider().padding(.vertical, 4)
                        VStack() {
                            Text("If you wish you can customize the application bu toggle the switch in this box. That will start the onboarding process again")
                                .padding(.vertical, 8)
                                .frame(minHeight: 60)
                                .layoutPriority(1)
                                .font(.footnote)
                                .multilineTextAlignment(.leading)
                            
                            GroupBox {
                                Toggle(isOn: $isOnboarding) {
                                    Text(isOnboarding ? "Restarted".uppercased() : "Restart".uppercased())
                                        .fontWeight(.bold)
                                        .foregroundColor(isOnboarding ? .green : .secondary)
                                }
                            }
                            
                        }
                    } label: {
                        SettingsLabelView(lableText: "Customization", lableImage: "paintbrush")
                    }
                    
                    // MARK: - SECTION 3
                    
                    GroupBox {
                        SettingsRowView(name: "Developer", content: "Saurabh Dave")
                        SettingsRowView(name: "Designer", content: "Rupal Ojha")
                        SettingsRowView(name: "Compatibility", content: "iOS 16")
                        SettingsRowView(name: "Website", linkLable: "Linkedin", linkDestination: "www.linkedin.com/in/sdsaurabhdave/")
                        SettingsRowView(name: "SwiftUI", content: "4.0")
                        SettingsRowView(name: "Version",content: "1.0.0")
                    } label: {
                        SettingsLabelView(lableText: "Application", lableImage: "apps.iphone")
                    }
                    
                }//: VSTACK
                .navigationTitle("Settings")
                .navigationBarTitleDisplayMode(.large)
                .toolbar(content: {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "xmark")
                    }
                })
                .padding()
            }//: SCROLL
        }//: NAVIGATION
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
