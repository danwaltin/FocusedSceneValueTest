//
//  FocusedSceneValueTestApp.swift
//  FocusedSceneValueTest
//
//  Created by Dan Waltin on 2021-10-31.
//

import SwiftUI

@main
struct FocusedSceneValueTestApp: App {
	var body: some Scene {
		WindowGroup {
			ContentView()
		}
		.commands {
			PlaylistCommands()
		}
	}
}
