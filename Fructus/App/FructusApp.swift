//
//  FructusApp.swift
//  Fructus
//
//  Created by Ｍ200_Macbook_Pro on 2020/9/20.
//

import SwiftUI

@main
struct FructusApp: App {
	@AppStorage("isOnboarding") var isOnboarding: Bool = true
	
    var body: some Scene {
        WindowGroup {
			if isOnboarding {
				OnboardingView()
			} else {
				ContentView()
			}
        }
    }
}
