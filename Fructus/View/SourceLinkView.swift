//
//  SourceLinkView.swift
//  Fructus
//
//  Created by Ｍ200_Macbook_Pro on 2020/9/21.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {
		GroupBox() {
			HStack {
				Text("Content source")
				Spacer()
				Link("Wikipedia", destination: URL(string: "https://wikipedia.com")!)
				Image(systemName: "arrow.up.right.square")
			}
			.font(.footnote)
		}
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
			.previewLayout(.sizeThatFits)
			.padding()
    }
}
