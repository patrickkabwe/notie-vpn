//
//  UIText.swift
//  Notie
//
//  Created by Patrick Kabwe on 20/01/2024.
//

import SwiftUI

struct UIText: View {
    var label: String
    
    var body: Text {
        Text(label)
    }
}

#Preview {
    UIText(label: "")
}
