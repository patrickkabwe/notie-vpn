//
//  OnBoarding.swift
//  Notie
//
//  Created by Patrick Kabwe on 21/01/2024.
//

import SwiftUI

struct OnBoardingView: View {
    
    @StateObject var viewModel = OnBoardingViewModel()
    
    
    var body: some View {
        let isLast = viewModel.selection == viewModel.onBoardingItems[viewModel.onBoardingItems.count - 1].id
        
        VStack{
            TabView(
                selection: $viewModel.selection,
                content:  {
                    ForEach(viewModel.onBoardingItems) { item in
                        VStack{
                            Image(item.imageName)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 220, height: 220, alignment: .bottom)
                            Spacer().frame(height: 50)
                            UIText(label: item.title)
                                .multilineTextAlignment(.center)
                                .foregroundColor(.white)
                                .font(.system(size: 30).bold())
                                .frame(width: 310)
                            
                            Spacer().frame(height: 10)
                            
                            UIText(label: item.description)
                                .multilineTextAlignment(.center)
                                .frame(width: 300)
                                .foregroundColor(.white)
                                .font(.system(size: 16))
                              
                        }.tag(item.id)
                    }
                }
            )
            .tabViewStyle(PageTabViewStyle())
            if isLast{
                NavigationLink(destination: LoginView(),label: {
                    UIText(label: "Get Started" )
                        .font(Font.custom("ManjariBold", size: 20))
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .padding(15)
                        .background(Color.primary_50)
                        .cornerRadius(100)
                        .foregroundColor(.black)
                })
                  
            } else {
                UIButton(
                    title: "Next",
                    textColor: .black
                ){
                    withAnimation {
                        viewModel.handleSelection()
                    }
                }
            }
            Spacer().frame(height: 30)
            if !isLast {
                NavigationLink(destination: LoginView(),label: {
                    UIText(label: "Skip" )
                        .font(Font.custom("ManjariBold", size: 20))
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                        .padding(15)
                        .cornerRadius(100)
                        .foregroundColor(.white)
                })
                  
            } else {
                UIButton(
                    title: "Back",
                    textColor: .white,
                    transparent: true
                ){
                    withAnimation {
                        viewModel.handleBack()
                    }
                }
            }
            Spacer().frame(height: 30)
            

        }
        .padding()
        .background(Color.black)
        .ignoresSafeArea()

    }
}

#Preview {
    OnBoardingView()
}
