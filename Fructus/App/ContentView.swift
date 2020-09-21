//
//  ContentView.swift
//  Fructus
//
//  Created by Ｍ200_Macbook_Pro on 2020/9/20.
//

import SwiftUI

struct ContentView: View {
	// MARK: - Properties
	@State private var isShowingSetting: Bool = false
	var fruits: [Fruit] = fruitsData
	
	// MARK: - Body
	var body: some View {
		NavigationView {
			List {
				ForEach(fruits.shuffled()) { item in
					NavigationLink(destination: FruitDetailView(fruit: item)) {
						FruitRowView(fruit: item)
							.padding(.vertical, 4)
					}
				}
			}
			.navigationTitle("Fruits")
			.navigationBarItems(
				trailing:
					Button(action: {
						isShowingSetting = true
					}) {
						Image(systemName: "slider.horizontal.3")
					} //: Button
					.sheet(isPresented: $isShowingSetting) {
						SettingsView()
					}
			)
		} //: Navigation
		.navigationViewStyle(StackNavigationViewStyle())
	}
}

// MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
			ContentView(fruits: fruitsData)
					.previewDevice("iPhone XR")
    }
}
