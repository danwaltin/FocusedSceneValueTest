//
//  ContentView.swift
//  FocusedSceneValueTest
//
//  Created by Dan Waltin on 2021-10-31.
//

import SwiftUI

struct ContentView: View {
	var body: some View {
		NavigationView {
			List(things) { thing in
				NavigationLink(
					destination: DetailView(thing: thing),
					label: {Text(thing.name)}
				)
			}
			
			Text("Nothing selected")
		}
	}
}
