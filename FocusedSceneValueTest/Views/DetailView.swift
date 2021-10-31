//
//  DetailView.swift
//  FocusedSceneValueTest
//
//  Created by Dan Waltin on 2021-10-31.
//

import SwiftUI

struct DetailView: View {
	let thing: Thing

	var body: some View {
		Text(thing.name)
			.focusedSceneValue(\.selectedThing, thing)
			.navigationTitle(thing.name)
	}
}
