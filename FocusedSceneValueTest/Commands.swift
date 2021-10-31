//
//  Commands.swift
//  FocusedSceneValueTest
//
//  Created by Dan Waltin on 2021-10-31.
//

import Foundation
import SwiftUI

struct PlaylistCommands: Commands {
	var body: some Commands {
		CommandMenu("Playlist") {
			Button("Edit playlist") {
				print("*** Editing playlist")
			}
		}
	}
}
