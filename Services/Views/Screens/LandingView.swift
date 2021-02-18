//
//  OnboardingView.swift
//  Services
//
//  Created by Артём Мошнин on 15/2/21.
//

import SwiftUI

struct LandingView: View {
    @AppStorage("newUser") private var newUser: Bool = true
    @State private var isActive: Bool = false
    
    var body: some View {
        NavigationView {
            GeometryReader { proxy in
                VStack {
                    Spacer() //: SPACER
                        .frame(height: proxy.size.height * 0.18)
                    
                    Title //: TEXT
                    Spacer() //: SPACER
                    NavigationLink(destination: HomeView(), isActive: $isActive) {
                        ContinueButton { isActive = true }
                    } //: BUTTON
                } //: VSTACK
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(BackgroundImage(proxy: proxy)) //: IMAGE
            } //: GEOMETRY_READER
        } //: NAVIGATION_VIEW
        .accentColor(.primary)
    }
    
    private var Title: some View {
        Text("Start the app") //: TEXT
            .font(.largeTitle)
            .foregroundColor(.white)
    }
    
    private func BackgroundImage(proxy: GeometryProxy) -> some View {
        return Image("pullups") //: IMAGE
            .resizable()
            .aspectRatio(contentMode: .fill)
            .overlay(Color.black.opacity(0.4))
            .frame(width: proxy.size.width)
            .edgesIgnoringSafeArea(.all)
    }
    
    private func ContinueButton(action: @escaping () -> Void) -> some View {
        Button(action: action, label: {
            HStack(spacing: 15) {
                Spacer()
                Image(systemName: "plus.circle")
                Text("Create a challenge")
                Spacer()
            } //: HSTACK
            .font(.title2)
            .foregroundColor(.white)
        }) //: BUTTON
        .padding(.horizontal, 15)
        .buttonStyle(PrimaryButtonStyle())
    }
}

struct LandingView_Previews: PreviewProvider {
    static var previews: some View {
//            LandingView().previewDevice("iPhone 8")
            LandingView().previewDevice("iPhone 11 Pro")
//            LandingView().previewDevice("iPhone 11 Pro Max")
        }
}
