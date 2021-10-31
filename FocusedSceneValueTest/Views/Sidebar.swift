//
//  Sidebar.swift
//  FocusedSceneValueTest
//
//  Created by Dan Waltin on 2021-10-31.
//

import SwiftUI

struct Sidebar: View {
	var body: some View {
		List(things) { thing in
			NavigationLink(
				destination: DetailView(thing: thing),
				label: {
					Text(thing.name)
				}
			)
		}
	}
}
