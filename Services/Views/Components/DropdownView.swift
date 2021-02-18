//
//  DropdownView.swift
//  Services
//
//  Created by Артём Мошнин on 18/2/21.
//

import SwiftUI

struct DropdownView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Exercise")
                    .font(.title)
                Spacer()
            } //: HSTACK
            .padding(.vertical, 10)
            
            Button(action: {}, label: {
                HStack {
                    Text("Pushups")
                        .font(.title3)
                    Spacer()
                    Image(systemName: "arrowtriangle.down.circle")
                }
            }) //: BUTTON
            .buttonStyle(PrimaryButtonStyle(fillColor: .primaryButton))
        } //: VSTACK
        .padding(20)
    }
}

struct DropdownView_Previews: PreviewProvider {
    static var previews: some View {
        DropdownView()
        DropdownView()
            .preferredColorScheme(.dark)
    }
}
