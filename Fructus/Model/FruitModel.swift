//
//  FruitModel.swift
//  Fructus
//
//  Created by Ｍ200_Macbook_Pro on 2020/9/21.
//

import SwiftUI

// MARK: - Fruits Data Model

struct Fruit: Identifiable {
	var id = UUID()
	var title: String
	var headline: String
	var image: String
	var gradientColors: [Color]
	var description: String
	var nutrition: [String]
}
