//
//  PlaylistView.swift
//  FocusedSceneValueTest
//
//  Created by Dan Waltin on 2021-10-31.
//

import SwiftUI

struct PlaylistView: View {
	var playlist: Playlist

	var body: some View {
		Text(playlist.name)
			.focusedSceneValue(\.selectedPlaylist, playlist)
			.navigationTitle(playlist.name)
	}
}

struct NoSelection: View {
	var body: some View {
		Text("Nothing selected")
	}
}
