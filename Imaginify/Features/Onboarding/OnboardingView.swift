//
//  OnboardingView.swift
//  Imaginify
//
//  Created by Oleksandr on 27.06.2023.
//

import SwiftUI

struct OnboardingView: View {
    @State private var currentIndex = 0
    private let pageCount = 3
    init() {
        UIPageControl.appearance().currentPageIndicatorTintColor = UIColor(.primary_color)
    }
    
    var body: some View {
        VStack (alignment: .leading, spacing: 0) {
            TabView (selection: $currentIndex) {
                OnboardingImage(tag: 0)
                    .tag(0)
                OnboardingImage(tag: 1)
                    .tag(1)
                OnboardingImage(tag: 2)
                    .tag(2)
            }
            .tabViewStyle(.page(indexDisplayMode: .never))
            .background(Color(.blue))
            
            CustomPageIndicator(currentIndex: currentIndex, pageCount: pageCount)
            Button("Continue with email") {}
                .padding()
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
                .fontTemplate(AppFontTemplate.h2)
        }
    }
}

struct CustomPageIndicator: View {
    var currentIndex: Int
    let pageCount: Int
    
    var body: some View {
        HStack(spacing: 8) {
            ForEach(0..<pageCount, id:\.self) { index in
                Circle()
                    .foregroundColor(index == currentIndex ? .primary_color : .gray)
                    .frame(width: 10, height: 10)
            }
        }
    }
}
