//
//  SceneCoordinator.swift
//  Imaginify
//
//  Created by Oleksandr on 27.06.2023.
//

import SwiftUI
import UIKit

class SceneCoordinator: Coordinator {
    let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    func start() {
        window.rootViewController = UIHostingController(rootView: OnboardingView())
    }
}
