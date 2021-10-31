//
//  PlaylistCommands.swift
//  FocusedSceneValueTest
//
//  Created by Dan Waltin on 2021-10-31.
//

import Foundation
import SwiftUI

struct PlaylistCommands: Commands {
	@FocusedValue(\.selectedPlaylist) private var playlist
	
	var body: some Commands {
		CommandMenu("Playlist") {
			Button("Edit playlist \(playlistName)") {
				print("*** Editing playlist \(playlistName)")
			}
			.disabled(playlist == nil)
			.keyboardShortcut("e")
		}
	}
	
	private var playlistName: String {
		guard let playlist = playlist else {
			return ""
		}
		
		return playlist.name
	}
	
}
