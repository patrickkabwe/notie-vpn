//
//  ContentView.swift
//  Notie
//
//  Created by Patrick Kabwe on 20/01/2024.
//

import SwiftUI

struct RootView: View {
    @State var name = ""
    @State var isSaved = false
    
    var body: some View {
        VStack {
            UIButton(
                title: "Login", textColor: Color.white
            ).body.background(Color.gray)
        }
    }
}

#Preview {
    RootView()
}
