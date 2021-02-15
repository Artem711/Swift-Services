//
//  OnboardingView.swift
//  Services
//
//  Created by Артём Мошнин on 15/2/21.
//

import SwiftUI

struct OnboardingView: View {
    @AppStorage("newUser") private var newUser: Bool = true
    
    var body: some View {
        VStack {
            Text("Onboarding")
            Button(action: {
                newUser = false
            }, label: {
                Text("Start the app")
            })
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
