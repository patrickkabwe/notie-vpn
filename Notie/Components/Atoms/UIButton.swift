//
//  Button.swift
//  Notie
//
//  Created by Patrick Kabwe on 20/01/2024.
//

import SwiftUI


struct UIButton: View {
    
    @ScaledMetric(relativeTo: .body) var scaledPadding: CGFloat = 15
    
    let title: String
    let textColor: Color
    var transparent: Bool = false
    var onPress: () -> Void

    var body: some View {
        Button(action: onPress, label: {
            UIText(label:title)
                .font(Font.custom("ManjariThin", size: 20))
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                .padding(scaledPadding)
                .background(transparent ? Color.clear : Color.primary_50)
                .cornerRadius(100)
                .foregroundColor(textColor)
  
        })
        .accentColor(textColor)

    }
}

#Preview {
    UIButton(title: "Submit", textColor: Color.white, onPress: {})
}
