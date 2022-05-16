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
			ToolbarView()
		}
	}
}

struct ToolbarView: View {
	@State var playStatus = ToolbarState(stateValue: 0)

	var body: some View {
		Button("Ada Lovelace") {
			print("lorem ipsum")
		}
    }
}

struct ToolbarState {
	let stateValue: Int
}
