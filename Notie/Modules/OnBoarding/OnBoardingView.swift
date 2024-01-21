//
//  OnBoarding.swift
//  Notie
//
//  Created by Patrick Kabwe on 21/01/2024.
//

import SwiftUI

struct OnBoardingView: View {
        
    let onBoardingItems:
    
    var body: some View {
        VStack{
            TabView(
                content:  {
                    VStack{
                        Image(.onboarding1)
                        UIText(label: "Welcome to Neon VPN")
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                            .font(.system(size: 30).bold())
                            .frame(width: 310)
                        
                        Spacer().frame(height: 10)
                        
                        UIText(label: "Your Online Security and Freedom Starts Here.")
                            .multilineTextAlignment(.center)
                            .frame(width: 300)
                            .foregroundColor(.white)
                            .font(.system(size: 16))
                          
                    }
                    
                    VStack{
                        Image(.onboarding1)
                        UIText(label: "Welcome to Neon VPN")
                            .multilineTextAlignment(.center)
                            .foregroundColor(.white)
                            .font(.system(size: 30).bold())
                            .frame(width: 310)
                        
                        Spacer().frame(height: 10)
                        
                        UIText(label: "Your Online Security and Freedom Starts Here.")
                            .multilineTextAlignment(.center)
                            .frame(width: 300)
                            .foregroundColor(.white)
                            .font(.system(size: 16))
                          
                    }
               
                }
            )
            .tabViewStyle(PageTabViewStyle())
            UIButton(title: "Next", textColor: .black)
            Spacer().frame(height: 30)
            UIButton(
                title: "Skip",
                textColor: .white,
                transparent: true
            )
            Spacer().frame(height: 30)
            

        }
        .padding()
        .background(Color.black)
        .ignoresSafeArea()

    }
}

#Preview {
    OnBoarding()
}
