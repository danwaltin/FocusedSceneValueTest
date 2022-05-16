//
//  Toolbar.swift
//  FocusedSceneValueTest
//
//  Created by Dan Waltin on 2022-05-15.
//

import SwiftUI

struct Toolbar: ToolbarContent {
	var body: some ToolbarContent {
		ToolbarItem {
			LoremIpsumToolbarView()
		}
	}
}

struct LoremIpsumToolbarView: View {
	@State var playStatus = ToolbarState(stateValue: 0)

	var body: some View {
		HStack {
			Text("lorem")
			Text("ipsum")
		}
    }
}


struct ToolbarState {
	let stateValue: Int
}
