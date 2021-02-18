//
//  PrimaryButtonStyle.swift
//  Services
//
//  Created by Артём Мошнин on 18/2/21.
//

import SwiftUI

struct PrimaryButtonStyle: ButtonStyle {
    var fillColor: Color = .darkPrimary
    func makeBody(configuration: Configuration) -> some View {
        return PrimaryButton(configuration: configuration, fillColor: fillColor)
    }
    
    struct PrimaryButton: View {
        var configuration: Configuration
        var fillColor: Color
        
        var body: some View {
            return configuration.label //: TEXT
                .padding()
                .background(
                    RoundedRectangle(cornerRadius: 8) //: ROUNDED_RECTANGLE
                        .fill(fillColor))
        }
    }
}

struct PriaryButtonStyle_Previews: PreviewProvider {
    static var previews: some View {
        Button(action: {}, label: {
            Text("Create challenge")
        })
        .buttonStyle(PrimaryButtonStyle())
    }
}
