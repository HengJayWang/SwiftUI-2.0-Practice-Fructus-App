//
//  OnboardingView.swift
//  Fructus
//
//  Created by Ｍ200_Macbook_Pro on 2020/9/20.
//

import SwiftUI

struct OnboardingView: View {
	// MARK: - Properties
	var fruits: [Fruit] = fruitsData
	
	// MARK: - Body
    var body: some View {
		TabView {
			ForEach(fruits[0...5]) { item in
				FruitCardView(fruit: item)
			} //: Loop
		} //: Tab
		.tabViewStyle(PageTabViewStyle())
		.padding(.vertical, 20)
    }
}
// MARK: - Preview
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
		OnboardingView(fruits: fruitsData)
			.previewDevice("iPhone XR")
    }
}
