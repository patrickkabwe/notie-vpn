//
//  ContentView.swift
//  Notie
//
//  Created by Patrick Kabwe on 20/01/2024.
//

import SwiftUI

struct RootView: View {
    @AppStorage("isOnboarded") private var isOnboarded: Bool = false
    @AppStorage("currentUserId") private var currentUserId: String?
    
    var body: some View {
        NavigationView{
            if !isOnboarded {
                if currentUserId != nil {
                // MARK: Check if valid userId
                    
                } else {
                    VStack {
                        UIButton(
                            title: "Login", textColor: Color.white
                        ){
                            print("Button pressed!")
                        }
                    }
                    .frame(
                        maxWidth: .infinity,
                        maxHeight: .infinity
                    )
                    .background(Color.black)
                    .ignoresSafeArea()
                }
            } else {
                OnBoardingView()
            }
          
        }
       
    }
}

#Preview {
    RootView()
}
