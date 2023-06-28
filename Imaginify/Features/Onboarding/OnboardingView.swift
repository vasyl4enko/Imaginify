//
//  OnboardingView.swift
//  Imaginify
//
//  Created by Oleksandr on 27.06.2023.
//

import SwiftUI

struct OnboardingView: View {
    
    init() {
        UIPageControl.appearance().currentPageIndicatorTintColor = UIColor(.primary_color)
    }
    
    var body: some View {
        VStack (alignment: .center) {
            TabView {
                OnboardingImage(tag: 0)
                    .tag(0)
                OnboardingImage(tag: 1)
                    .tag(1)
                OnboardingImage(tag: 2)
                    .tag(2)
            }
            .tabViewStyle(.page(indexDisplayMode: .always))
            Button("Continue with email") {}
            Spacer()
        }.background(Color.background_app.ignoresSafeArea(.all))
        
        
        
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}

struct OnboardingImage: View {
    var tag: Int
    var body: some View {
        VStack {
            Image("onboarding_\(tag)")
                .resizable()
                .frame(width: 380, height: 380)
                .tag(0)
            Text(Constants.onboardingDescription[tag])
                .frame(width: 380, height: 150)
        }
    }
}
