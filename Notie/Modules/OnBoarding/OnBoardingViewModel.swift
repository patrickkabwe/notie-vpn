//
//  OnBoardingViewModel.swift
//  Notie
//
//  Created by Patrick Kabwe on 21/01/2024.
//

import Foundation
import SwiftUI

class OnBoardingViewModel: ObservableObject {
    @Published var selection = 0
    @Published var onBoardingItems:[OnBoarding] = [
        OnBoarding(
            id:0,
            title: "Welcome to Notie VPN",
            description: "Your Online Security and Freedom Starts Here.",
            imageName: "onboarding-1"
        ),
        OnBoarding(
            id:1,
            title: "Trusted By Millions Users",
            description: "An inviting image that represents online security, such as a padlock or a shield.",
            imageName: "onboarding-2"
        ),
        OnBoarding(
            id:2,
            title: "Stay Secure Online",
            description: "Neon VPN encrypts your connection, protecting your data and online activities.",
            imageName: "onboarding-3"
        ),
        OnBoarding(
            id:3,
            title: "Get Started Today",
            description: "It's time to experience a safer and more open internet. Get started with Notie VPN now.",
            imageName: "onboarding-4"
        )
    ]
    
    func handleSelection(){
        if selection == onBoardingItems.count - 1 {
            selection = 0
        } else {
            selection += 1
        }
    }   
    
    func handleBack(){
        if selection == 0 {
            selection = 0
        } else {
            selection -= 1
        }
    }
    

}
